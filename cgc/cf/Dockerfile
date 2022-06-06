FROM condaforge/mambaforge:4.12.0-2

RUN  CONDA_OVERRIDE_CUDA="11.2" mamba install \
        tensorflow==2.9.1=*cuda* \
        jaxlib==*=*cuda* \
        jax \
        netcdf4 \
        pyyaml \
        -c ngam -c conda-forge --yes

RUN mamba clean --all --yes
