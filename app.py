import string
import re
import aiml
import random
import time
import mysql.connector
from flask import Flask, render_template, request, Markup
from Sastrawi.Stemmer.StemmerFactory import StemmerFactory
from spellchecker import correction

app = Flask(__name__)

kernel = aiml.Kernel()
kernel.bootstrap(learnFiles="std-startup.xml", commands="load aiml")

# MySQL database connection
db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="knowledge_based"
)

cursor = db.cursor()

chat_log = []


@app.route('/reset')
def hapus():
    chat_log.clear()
    return render_template("index.html", chat_log=chat_log)


@app.route("/")
def home():
    chat_log.append({"sender": "user", "content": "Halo Bot!"})
    chat_log.append(
        {"sender": "bot", "content": "Selamat Datang, Ada yang bisa saya bantu?"})
    return render_template("index.html", chat_log=chat_log)


DEFAULT_RESPONSES = [
    "Mohon Maaf, Saya tidak mengerti apa yang anda tanyakan",
    "Mohon Maaf, Saya tidak dapat mengerti, Silahkan ketik kembali pertanyaan anda",
    "Pertanyaan yang anda inputkan tidak ada pada database kami, mohon masukkan pertanyaan lain",
]

factory = StemmerFactory()
stemmer = factory.create_stemmer()

# function PreProcessing


def preprocess(text):
    # mengubah inputan menjadi huruf kecil semua (case folding)
    text = text.lower()
    print("Hasil Inputan Menjadi Huruf Kecil: ", text)
    # menghilangkan nomor dan tanda baca
    text = re.sub(r"\d+", "", text)
    text = text.translate(str.maketrans("", "", string.punctuation))
    print("Hasil penghilangan nomor dan tanda baca: ", text)

    # melakukan tokenizing, Membagi kalimat menjadi perkata
    kata = text.split()
    print("Hasil tokenizing: ", kata)

    # melakukan spell check
    perbaikan_kata = []
    for kata in kata:
        perbaikan_kata.append(correction(kata))
    print("Hasil Spell Check Typo : ", perbaikan_kata)

    # melakukan Stemming, Merubah semua kata menjadi kata dasar
    pembuangan_kata = []
    for kata in perbaikan_kata:
        pembuangan_kata.append(stemmer.stem(kata))
        print("Hasil Stemming : ", pembuangan_kata)

    # melakukan filtering stopwords, membuang kata yang tidak di perlukan
    with open("stopword.txt", "r") as file:
        stopwords = file.read().splitlines()
    penyaringan_kata = [
        kata for kata in pembuangan_kata if kata not in stopwords]
    print("Hasil filtering stopwords: ", penyaringan_kata)

    # menggabungkan kata sudah melalui tahapan PreProcessing
    preprocessed_text = " ".join(penyaringan_kata)

    print("Pattern :", preprocessed_text)
    return preprocessed_text


@app.route("/", methods=["GET", "POST"])
def chat():
    if request.method == "POST":
        user_input = request.form.get("user_input")
        preprocessed_text = preprocess(user_input)

        # Check if the question exists in the database
        cursor.execute(
            "SELECT response FROM aiml WHERE question = %s", (preprocessed_text,))
        result = cursor.fetchone()

        if result:
            response = result[0]
        else:
            response = kernel.respond(preprocessed_text)

        if response:
            response = Markup(response)
            chat_log.append({"sender": "user", "content": user_input})
            chat_log.append({"sender": "bot", "content": response})
        else:
            response = random.choice(DEFAULT_RESPONSES)
            chat_log.append({"sender": "user", "content": user_input})
            chat_log.append({"sender": "bot", "content": response})

    return render_template("index.html", chat_log=chat_log)


if __name__ == "__main__":
    app.run(debug=True)
