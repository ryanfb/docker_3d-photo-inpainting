FROM pytorch/pytorch:1.4-cuda10.1-cudnn7-runtime

ENV DISPLAY=:0
ENV CUDA_VISIBLE_DEVICES=0
RUN apt-get update && apt-get install -y libfontconfig1-dev wget ffmpeg libsm6 libxext6 libxrender-dev mesa-utils-extra libegl1-mesa-dev libgles2-mesa-dev xvfb git python3-pyqt5
RUN git clone https://github.com/vt-vl-lab/3d-photo-inpainting.git /3d-photo-inpainting && cd /3d-photo-inpainting && git checkout 47c475a022e174161209419b12355e71ece73113
WORKDIR /3d-photo-inpainting
RUN pip install -r requirements.txt && pip install scipy matplotlib scikit-image
RUN chmod a+x download.sh && ./download.sh
