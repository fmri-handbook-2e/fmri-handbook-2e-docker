FROM jupyter/minimal-notebook

USER root

# system update
RUN apt-get update --yes && apt-get upgrade --yes

# python installs
RUN pip install \
    nibabel \
    nipype \
    python-box \
    GitPython \
    pandas \
    numpy \
    scipy \
    nilearn \
    matplotlib \
    scikit-learn \
    pyyaml \
    PyPDF2 \
    Biopython

RUN ls

RUN python -m pip install git+https://github.com/fmri-handbook-2e/fmrihandbook.git

WORKDIR /handbook