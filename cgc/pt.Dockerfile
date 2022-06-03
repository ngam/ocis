FROM nvcr.io/nvidia/pytorch:22.05-py3

RUN apt-get update && apt-get install -y --no-install-recommends \
        tree && \
     rm -rf /var/lib/apt/lists/

RUN python -m pip install -U --disable-pip-version-check --no-cache-dir \
	netcdf4
