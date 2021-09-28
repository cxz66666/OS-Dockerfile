# OS-Dockerfile

a prettier and enhanced docker image in ZJU OS course

这是基于OS课程提供的docker image的增强版，**目前提供了完美的zsh以及大量插件，gef-legacy和pip2，后续有衬手的工具会继续向里面添加**



### 写在前面：

请确保您仔细阅读过readme后再继续，否则可能出现奇怪的bug！

### 使用效果

![image-20210927224538036](https://pic.raynor.top/images/2021/09/27/image-20210927224538036.png)



![image-20210927225009767](https://pic.raynor.top/images/2021/09/27/image-20210927225009767.png)





**注意**我为了方便，zsh使用的是antigen包管理器来下载插件，同时该插件使用了github的镜像源站`https://github.com.cnpmjs.org`，但是可能会出现连接不问的情况，初次进入容器的同学可能需要一段时间加载各种插件，之后再进入即可秒进



### 修改Dockerfile

~~~bash
git clone https://github.com/cxz66666/OS-Dockerfile
cd /path/to/OS-Dockerfile

vim Dockerfile

#请根据注释着重修改 前三个变量
# FROM 修改为你需要创建的源
# ENV user 改为你需要的用户 root 或其他
# base 修改为该用户的根目录， root 为/root 其他为/home/{name}
~~~





### 如何build?

~~~bash

docker build -t oslab-zsh:2020 .  #这里的oslab-zsh和2020 你可以切换成你喜欢的tag,比如oslab-enhance:2021
~~~



### 如何使用？

~~~dockerfile
#假设你上一步中 -t后面的tag为oslab-zsh:2020，宿主机需要挂载的目录为/app/os/lab0，镜像内目录为/home/os/lab0 那么命令为
#一些参数的解释
# -i进入交互模式，-t分配一个伪终端，两者常一起使用-it
# -v 挂载目录，可以理解为共享文件夹，宿主机和镜像的某个文件夹是关联起来的， 比如我本机文件夹为/app/os/lab0 容器内要挂载的是/home/oslab/lab0，则为/app/os/lab0:/home/oslab/lab0
# --name 指定容器名
# --network host指定容器使用宿主机的网络， 
# oslab-zsh:2020  使用的镜像名字
# zsh 进入的shell
# -u root 使用的是root用户
docker run -it -v /app/os/lab0:/home/oslab/lab0 -u root --name="oslab" --network host oslab-zsh:2020 zsh

~~~





### 工作原理

其实就是简单的把本地文件复制到容器内部。有一点基础的童鞋应该都能看出来没啥难度。。



### 使用其他base image

如果你没有oslab，或者想使用其他image，请到[这里](https://hub.docker.com/)寻找你想要的镜像，比如[ubuntu](https://hub.docker.com/_/ubuntu)，效果是基本一样的。



###  常见问题：

- **没有镜像oslab:2020** 

  请确保你按照老师的要求导入了oslab image，我在导入的时候打了个tag为2020，如果你没有打或者为lastest，请修改`Dockerfile`第一行

  ~~~dockerfile
  FROM oslab:lastest  #或者其他你设置的tag
  ~~~

- **如何在容器中使用代理**

  首先你要在`docker run`中设置`--net=host`，然后

  ~~~bash
  export http_proxy=http://xxxxxx #你懂的
  export https_proxy=https://xxxxxx #你懂的
  ~~~

  当然如果你使用`wsl`，事情就变得比较复杂了，我暂时没有找到合适的方法

- **我的图标显示错误，全是长方形框框：**

  这是字体的问题，我们使用的主题是powerline10k，你可以到[这里](https://github.com/romkatv/powerlevel10k/blob/master/README.md#meslo-nerd-font-patched-for-powerlevel10k)去研究，简单的说就是字体不对，wsl用户可以使用window terminal中的字体设置，linux用户请设置terminal的字体
  
- **这个主题不够好看**

  这里使用的主题是`powerline 10k`，你可以通过命令`p10k configure` 根据提示配置，如果你有更好看的主题，请修改本文件夹下的`zshrc`中

  ~~~bash
  antigen theme romkatv/powerlevel10k #修改为你喜欢的主题
  ~~~

  
