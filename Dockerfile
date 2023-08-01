FROM qubo188612/ubuntu20.04:latest AS latest

COPY ./qtweldingexe /workspace/qtwelding

#ENV DEBIAN_FRONTEND=noninteractive

RUN sudo apt-get update  \
    && sudo apt-get -y install libopenni-dev \
#   && sudo apt-get -y install language-pack-zh-hans \	
#   && sudo apt-get install -y ibus ibus-pinyin ibus-gtk ibus-gtk3 \
#   && sudo apt -y install libqt5qml5 libqt5quick5 libqt5quickwidgets5 qml-module-qtquick2 \
#   && sudo apt -y install libgsettings-qt1 \
    && sudo rm -rf /var/lib/apt/lists/* 

#配置默认输入法设置
#ENV LANG="zh_CN.UTF-8"
#ENV LANGUAGE="zh_CN.UTF-8"
#ENV LC_CTYPE="zh_CN.UTF-8"
#ENV LC_NUMERIC="zh_CN.UTF-8"
#ENV LC_TIME="zh_CN.UTF-8"
#ENV LC_COLLATE="zh_CN.UTF-8"
#ENV LC_MONETARY="zh_CN.UTF-8"
#ENV LC_MESSAGES="zh_CN.UTF-8"
#ENV LC_PAPER="zh_CN.UTF-8"
#ENV LC_NAME="zh_CN.UTF-8"
#ENV LC_ADDRESS="zh_CN.UTF-8"
#ENV LC_TELEPHONE="zh_CN.UTF-8"
#ENV LC_MEASUREMENT="zh_CN.UTF-8"
#ENV LC_IDENTIFICATION="zh_CN.UTF-8"
#ENV LC_ALL="zh_CN.UTF-8"
#ENV GTK_IM_MODULE=ibus
#ENV QT_IM_MODULE=ibus
#ENV XMODIFIERS=@im=ibus
   
#RUN sudo echo "export GTK_IM_MODULE=ibus" >> ~/.bashrc \
#    && sudo echo "export XMODIFIERS=@im=ibus" >> ~/.bashrc \
#    && sudo echo "export QT_IM_MODULE=ibus" >> ~/.bashrc
    
#RNU sudo source ~/.bashrc   
    
RUN sudo chmod -R 777 /workspace/qtwelding

WORKDIR /workspace/qtwelding

CMD ["/workspace/qtwelding/qtwelding.sh"]
