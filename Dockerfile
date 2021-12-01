FROM python:3.9-slim-buster

# Create default user folder
RUN mkdir -p /home/pi

# Install gstreamer
COPY ./scripts/install_gst.sh /install_gst.sh
RUN GST_VERSION=1.17.2 ./install_gst.sh && rm /install_gst.sh

# Install necessary tools for basic usage
RUN apt install -y --no-install-recommends file locate tmux unzip nano htop iputils-ping watch wget iproute2