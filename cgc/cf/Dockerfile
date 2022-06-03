FROM quay.io/condaforge/linux-anvil-cuda:11.7

RUN CONDA_OVERRIDE_CUDA="11.2" /opt/conda/condabin/mamba \
    install tensorflow==2.9.1=*cuda112* netcdf4 pyyaml \
    -c ngam -c conda-forge --strict-channel --yes
