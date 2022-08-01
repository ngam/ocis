FROM nvcr.io/nvidia/tensorflow:22.07-tf2-py3

COPY cgc/tf/requirements.txt /tmp/pip-tmp/
RUN pip3 --disable-pip-version-check --no-cache-dir install -r \
    /tmp/pip-tmp/requirements.txt \
    && rm -rf /tmp/pip-tmp

COPY cgc/requirements.txt /tmp/pip-tmp/
RUN pip3 --disable-pip-version-check --no-cache-dir install -r \
    /tmp/pip-tmp/requirements.txt \
    && rm -rf /tmp/pip-tmp
