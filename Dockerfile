#请注意你的源镜像的tag，部分同学可能为oslab:latest 或 oslab:2021，注意修改为你自己的
FROM oslab:2020

# 在这里设置你想要的用户名
ENV user oslab
# 如果你使用root用户，请将下方的base改为 /root 
ENV base /home/${user}

SHELL ["/bin/bash", "-c"]

RUN sudo apt-get update && apt-get install -y zsh git wget

WORKDIR ${base}
COPY get-pip.py ${base}/get-pip.py
RUN python2 get-pip.py && pip2 install capstone  keystone-engine  ropper unicorn && rm get-pip.py    


USER ${user}
# 安装oh-my-zsh (使用antigen一键安装，这里不需要手动安装)
#COPY install.sh ${base}/install.sh
#RUN ${base}/install.sh

COPY antigen.zsh ${base}/.antigen.zsh
COPY zshrc  ${base}/.zshrc
COPY p10k.zsh ${base}/.p10k.zsh
# COPY antigen ${base}/.antigen/
COPY gef.rc ${base}/.gef.rc
COPY gef.py ${base}/.gef.py
COPY gdbinit ${base}/.gdbinit

