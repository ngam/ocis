FROM nvcr.io/nvidia/tensorflow:22.05-tf2-py3

COPY cgc/tfst/build.patch /tmp

WORKDIR /opt/tensorflow

RUN rm -rf tensorflow-source
RUN rm -rf tf-addons

RUN wget https://github.com/tensorflow/tensorflow/archive/refs/tags/v2.9.1.tar.gz -O tensorflow-source.tar.gz
RUN tar -xvf tensorflow-source.tar.gz
RUN mv tensorflow-2.9.1 tensorflow-source
RUN rm -rf tensorflow-source.tar.gz

RUN wget https://github.com/tensorflow/addons/archive/refs/tags/v0.17.0.tar.gz -O tf-addons.tar.gz
RUN tar -xvf tf-addons.tar.gz
RUN mv addons-0.17.0 tf-addons
RUN rm -rf tf-addons.tar.gz

RUN patch -p1 < /tmp/build.patch

RUN ./nvbuild.sh

COPY cgc/tf/requirements.txt /tmp/pip-tmp/
RUN pip3 --disable-pip-version-check --no-cache-dir install -r \
    /tmp/pip-tmp/requirements.txt \
    && rm -rf /tmp/pip-tmp

COPY cgc/requirements.txt /tmp/pip-tmp/
RUN pip3 --disable-pip-version-check --no-cache-dir install -r \
    /tmp/pip-tmp/requirements.txt \
    && rm -rf /tmp/pip-tmp

WORKDIR /workspace