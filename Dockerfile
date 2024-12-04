FROM nvidia/cuda:12.6.3-cudnn-runtime-ubuntu22.04 as cuda_base

ENV DEBIAN_FRONTEND noninteractive

ARG HTTP_PROXY
ARG HTTPS_PROXY

ENV http_proxy=$HTTP_PROXY
ENV https_proxy=$HTTPS_PROXY
#RUN echo "Acquire::http { Proxy \"$http_proxy\" }; Acquire::https { Proxy \"$https_proxy\" };" > /etc/apt/apt.conf.d/01proxy  

RUN apt update
RUN apt install git software-properties-common -y
RUN add-apt-repository ppa:deadsnakes/ppa -y
RUN apt remove --purge python3 -y
RUN apt install python3-venv -y

RUN apt install -y git curl wget
RUN apt install -y python3-dev python3-tk python3-html5lib python3-apt python3-pip python3-distutils 
RUN apt install -y python-is-python3
RUN apt install -y pip

ARG AUTOMATIC1111_VERSION=v1.10.0

#Install TMalloc
RUN apt install -y libgoogle-perftools-dev

#Install required tools for automatic 1111
RUN apt install -y libgl1
RUN apt install -y libglib2.0-0 libsm6 libxrender1 libxext6
RUN apt install -y vim

#Create new user
RUN useradd -ms /bin/bash appuser

WORKDIR /home/appuser
USER appuser
ENV HOME /home/appuser
ENV PATH="/home/appuser/.local/bin:$PATH"

#Install automatic1111
RUN git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui --branch ${AUTOMATIC1111_VERSION} --single-branch

VOLUME /home/appuser/stable-diffusion-webui
WORKDIR /home/appuser/stable-diffusion-webui

#Deforum ART
RUN git clone https://github.com/deforum-art/deforum-for-automatic1111-webui

#Additional Networks
RUN git clone https://github.com/kohya-ss/sd-webui-additional-networks

# Control Net
# https://github.com/Mikubill/sd-webui-controlnet
# https://github.com/Mikubill/sd-webui-controlnet/discussions/2039
RUN git clone https://github.com/Mikubill/sd-webui-controlnet

#Civitai Browser Plus
RUN git clone https://github.com/BlafKing/sd-civitai-browser-plus

#Animated Diff
RUN git clone https://github.com/continue-revolution/sd-webui-animatediff

# posex
RUN git clone https://github.com/hnmr293/posex

# stable-diffusion-webui-images-browser
RUN git clone https://github.com/AlUlkesh/stable-diffusion-webui-images-browser

# Reactor (Face Swap)
RUN git clone https://github.com/Gourieff/sd-webui-reactor.git

# Roop (Face Swap)
RUN git clone https://github.com/s0md3v/sd-webui-roop.git

# SD WebUI Aspect Ratio Helper
RUN git clone https://github.com/thomasasfk/sd-webui-aspect-ratio-helper.git

USER appuser
WORKDIR /home/appuser/stable-diffusion-webui

ENV IS_LOWVRAM false
ENV IS_MEDVRAM false
ENV USE_XFORMERS true
ENV USE_CUDA_118 true
RUN python -m venv venv
ENV PATH="./venv/bin:$PATH"
RUN ./venv/bin/python -m ensurepip
RUN pip install --upgrade pip

ADD webui-user.sh .

ENV no_proxy="localhost, 127.0.0.1, ::1"

EXPOSE 7860
ENTRYPOINT [ "./webui.sh" ]