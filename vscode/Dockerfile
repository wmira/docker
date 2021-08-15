FROM ubuntu:latest

RUN apt-get update
RUN apt install apt-transport-https
RUN apt install -y libxshmfence1
RUN apt install -y libasound2
RUN apt install -y libglib2.0-0
RUN apt install -y libnss3
RUN apt install -y libatk1.0-0
RUN apt install -y libatk-bridge2.0-0 libdrm2 libdrm-common libgdk-pixbuf2.0-0 libgtk-3-0 libgbm1

RUN useradd -ms /bin/bash coder
RUN mkdir -p /home/coder
COPY --chown=coder:coder vscode-1.59 /home/coder/vscode-1.59

RUN chown root:root /home/coder/vscode-1.59/chrome-sandbox
RUN chmod 4755 /home/coder/vscode-1.59/chrome-sandbox
RUN chown coder:coder /home/coder

USER coder
CMD ["/home/coder/vscode-1.59/bin/code", "--no-sandbox"]

