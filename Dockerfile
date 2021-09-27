FROM oslab:2020

RUN apt-get update && apt-get install -y zsh git wget

COPY antigen.zsh /root/.antigen.zsh
COPY zshrc  /root/.zshrc
COPY p10k.zsh /root/.p10k.zsh
COPY antigen /root/.antigen/
COPY gef.rc /root/.gef.rc
COPY gef.py /root/.gef.py
COPY gdbinit /root/.gdbinit

WORKDIR /root
COPY get-pip.py /root/get-pip.py
RUN python2 get-pip.py && pip2 install capstone  keystone-engine  ropper unicorn && rm get-pip.py    
