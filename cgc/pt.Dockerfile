ARG yr=${"$(date +%Y%m%d)":2:2}
ARG mo=$((${"$(date +%Y%m%d)":4:2}-1))

FROM nvcr.io/nvidia/pytorch:$yr.$mo-py3

RUN apt-get update && apt-get install -y --no-install-recommends \
        tree && \
     rm -rf /var/lib/apt/lists/

RUN python -m pip install -U --disable-pip-version-check --no-cache-dir \
	netcdf4
