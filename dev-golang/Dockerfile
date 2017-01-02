FROM dev-base
MAINTAINER sandeep.mogla@gmail.com (Sandeep Mogla)

# golang install latest
# COPY go*.tar.gz /usr/local/lib/go.tar.gz
wget https://storage.googleapis.com/golang/go1.5.1.linux-amd64.tar.gz
COPY go*.tar.gz /usr/local/lib/go.tar.gz
RUN cd /usr/local/lib && tar xvf go.tar.gz && rm /usr/local/lib/go.tar.gz
RUN update-alternatives --install /usr/bin/go go /usr/local/lib/go/bin/go 1
RUN update-alternatives --install /usr/bin/gofmt gofmt /usr/local/lib/go/bin/gofmt 1

# create godev user
ENV HOME /home/godev

RUN useradd -ms /bin/bash -d ${HOME} godev && usermod -a -G sudo godev
RUN echo 'godev:#GoDev8812_' | chpasswd

USER godev
WORKDIR ${HOME}

# set go env vars
ENV GOROOT=/usr/local/lib/go
ENV GOPATH=${HOME}/gocode
ENV GOBIN=${GOPATH}/bin
ENV PATH=$PATH:$GOBIN

# create working dir
RUN mkdir -p $GOPATH

# because it's better... install oh-my-zsh
RUN cd $HOME \
    && git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh \
    && cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
RUN sed -i 's/ZSH_THEME\=\"robbyrussell\"/ZSH_THEME\=\"wezm\"/g' ~/.zshrc

CMD ["zsh"]
