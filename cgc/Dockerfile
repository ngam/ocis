FROM nvcr.io/nvidia/tensorflow:22.04-tf2-py3

RUN apt-get update && apt-get install -y --no-install-recommends \
        tree && \
     rm -rf /var/lib/apt/lists/

RUN python -m pip install --disable-pip-version-check --no-cache-dir \
    jax[cuda11_cudnn82] \
    -f https://storage.googleapis.com/jax-releases/jax_releases.html

RUN python -m pip install --disable-pip-version-check --no-cache-dir \
    chex \
    distrax \
    dm-tree \
    flax \
    gym \
    halo \
    objax \
    optax \
    rlax \
    stax \ 
    neural-tangents \
    tensorflow-hub \
    tensorflow-probability \
    tensorflow-text \
    trax \
    tensorflow-datasets \
    tensorflow-io \
    tensorflow-gan

RUN python -m pip install --disable-pip-version-check --no-cache-dir \
	netcdf4

