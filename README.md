# OS-Dockerfile

a prettier and enhanced docker image in ZJU OS course

这是基于OS课程提供的docker image的增强版，**目前提供了完美的zsh以及大量插件，gef-leagcy和pip2，后续有衬手的工具会继续向里面添加**



### 写在前面：

请确保您仔细阅读过readme后再继续，否则可能出现奇怪的bug！

### 使用效果

![image-20210927224538036](https://pic.raynor.top/images/2021/09/27/image-20210927224538036.png)



![image-20210927225009767](https://pic.raynor.top/images/2021/09/27/image-20210927225009767.png)





**注意！：**我为了方便，zsh使用的是antigen包管理器来下载插件，但是该管理器缺点是只会到github上去搜索插件，这就导致如果有些同学没有开代理就会一直卡在zsh的loading界面，所以我把用到的插件打包成`antigen.tar.gz`，直接解压缩就可以使用

### 如何build?

~~~bash
git clone https://github.com/cxz66666/OS-Dockerfile
cd /path/to/OS-Dockerfile
tar -xzvf antigen.tar.gz #解压插件包
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

- 没有镜像oslab:2020 

  请确保你按照老师的要求导入了oslab image，我在导入的时候打了个tag为2020，如果你没有打或者为lastest，请修改`Dockerfile`第一行

  ~~~dockerfile
  FROM oslab:lastest  #或者其他你设置的tag
  ~~~

- 如何在容器中使用代理

  首先你要在`docker run`中设置`--net=host`，然后

  ~~~bash
  export http_proxy=http://xxxxxx #你懂的
  export https_proxy=https://xxxxxx #你懂的
  ~~~

  当然如果你使用`wsl`，事情就变得比较复杂了，我暂时没有找到合适的方法

- 我的图标显示错误，全是长方形框框：

  这是字体的问题，我们使用的主题是powerline10k，你可以到[这里](https://github.com/romkatv/powerlevel10k/blob/master/README.md#meslo-nerd-font-patched-for-powerlevel10k)去研究
