# Menggunakan base image Python
FROM python:3.8

# Membuat direktori /app
RUN mkdir /app

# Menyalin berkas Python ke dalam container
COPY hello.py /app/hello.py

# Menetapkan direktori kerja
WORKDIR /app

# Menjalankan aplikasi Python ketika container dijalankan
CMD ["python", "hello.py"]