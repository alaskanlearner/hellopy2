# Menggunakan base image Python
FROM python:3.8

# Membuat direktori /app
RUN mkdir /app

# Menyalin berkas Python ke dalam container
COPY hello.py /app/hello.py

# Menetapkan direktori kerja
WORKDIR /app

# Menginstal Flask (bisa juga menggunakan pipenv atau requirements.txt)
RUN pip install Flask

# Menjalankan aplikasi Python ketika container dijalankan
CMD ["python", "hello.py"]

# FROM centos:latest
# RUN yum install -y httpd \
#  zip\
#  unzip
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
# WORKDIR /var/www/html/
# RUN unzip photogenic.zip
# RUN cp -rvf photogenic/* .
# RUN rm -rf photogenic photogenic.zip
# CMD [ "/usr/sbin/httpd","-D","FOREGROUND" ]
# EXPOSE 80