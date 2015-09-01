FROM fedora:latest
MAINTAINER http://fedoraproject.org/wiki/Cloud

RUN dnf -y update \
    && dnf clean all
RUN dnf -y groupinstall "Development Tools" \
    && dnf clean all
RUN dnf -y install \
        python-devel \
        python-pip \
        git \
    && dnf clean all
RUN pip install mezzanine

WORKDIR /opt
RUN mezzanine-project mezzanine_website

COPY start.sh /

EXPOSE 8000

CMD ["/start.sh"]
