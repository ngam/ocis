FROM nvcr.io/nvidia/tensorflow:22.04-tf2-py3

RUN apt-get update && apt-get install -y --no-install-recommends \
    fluidsynth && \
    rm -rf /var/lib/apt/lists/

RUN python -m pip install -U --disable-pip-version-check --no-cache-dir \
    tensorflow-io \
    librosa \
    tensorflow_addons \
    pyfluidsynth \
    pretty_midi
