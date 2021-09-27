# OS-Dockerfile
a prettier and enhanced docker image in ZJU OS course

这是基于OS课程提供的docker image的增强版，**目前提供了完美的zsh以及大量插件，gef-leagcy和pip2，后续有衬手的工具会继续向里面添加**



### 使用效果

![image-20210927224538036](https://pic.raynor.top/images/2021/09/27/image-20210927224538036.png)



![image-20210927225009767](https://pic.raynor.top/images/2021/09/27/image-20210927225009767.png)







### 如何build?

~~~bash
git clone https://github.com/cxz66666/OS-Dockerfile
cd /path/to/OS-Dockerfile
docker build -t oslab-zsh:2020 .  #这里的oslab-zsh和2020 你可以切换成你喜欢的tag,比如oslab-enhance:2021
~~~



### 如何使用？

~~~dockerfile
#假设你上一步中 -t后面的tag为oslab-zsh:2020，宿主机需要挂载的目录为/app/os/lab0，镜像内目录为/home/os/lab0 那么命令为

docker run -it -v /app/os/lab0:/home/os/lab0 -u root --name="oslab" --network host oslab-zsh:2020 zsh

~~~





### 工作原理

其实就是简单的把本地文件复制到容器内部。有一点基础的童鞋应该都能看出来没啥难度。。



### 使用其他base image

如果你没有oslab，或者想使用其他image，请到[这里](https://hub.docker.com/)寻找你想要的镜像，比如[ubuntu](https://hub.docker.com/_/ubuntu)，效果是基本一样的。



### 常见问题：

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

  

