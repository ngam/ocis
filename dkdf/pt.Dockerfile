FROM nvcr.io/nvidia/pytorch:22.04-py3

RUN apt-get update && apt-get install -y --no-install-recommends \
    fluidsynth && \
    rm -rf /var/lib/apt/lists/

RUN python -m pip install --disable-pip-version-check --no-cache-dir \
    librosa \
    pyfluidsynth \
    pretty_midi
