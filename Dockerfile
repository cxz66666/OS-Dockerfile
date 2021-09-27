FROM oslab:2021

# 在这里设置你想要的用户名
ENV user oslab
ENV base /home/${user}

SHELL ["/bin/bash", "-c"]

RUN sudo apt-get update && apt-get install -y zsh git wget

WORKDIR ${base}
COPY get-pip.py ${base}/get-pip.py
RUN python2 get-pip.py && pip2 install capstone  keystone-engine  ropper unicorn && rm get-pip.py    


USER ${user}
# 安装oh-my-zsh
COPY install.sh ${base}/install.sh
RUN ${base}/install.sh

COPY antigen.zsh ${base}/.antigen.zsh
COPY zshrc  ${base}/.zshrc
COPY p10k.zsh ${base}/.p10k.zsh
# COPY antigen ${base}/.antigen/
COPY gef.rc ${base}/.gef.rc
COPY gef.py ${base}/.gef.py
COPY gdbinit ${base}/.gdbinit

