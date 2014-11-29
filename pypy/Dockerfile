FROM fedora
MAINTAINER "Michal Rostecki" <michal.rostecki@allegrogroup.com>

RUN yum -y update && yum clean all
RUN yum -y install pypy && yum clean all

RUN curl -O https://bootstrap.pypa.io/get-pip.py
RUN pypy get-pip.py

ADD . /src

RUN cd /src/; pypy -m pip install -r requirements.txt

EXPOSE 5000

CMD ["pypy", "/src/index.py"]
