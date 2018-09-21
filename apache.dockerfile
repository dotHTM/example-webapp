FROM httpd:2.4.34

RUN cp -va /usr/local/apache2 /bkup

RUN apt-get update
RUN apt-get -y install \
    make gcc \
    cpanminus

RUN cpanm \
    Data::Dumper::Concise  \
    Template::Liquid
