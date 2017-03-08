FROM alpine:latest

MAINTAINER Kai Kodama

RUN apk --no-cache add \
  curl \
  git \
  nodejs \
  zsh

# oh-my-zsh returns code 1
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" || true

# Yarn
RUN touch ~/.zshrc
RUN curl -o- -L https://yarnpkg.com/install.sh | zsh
RUN export PATH="$HOME/.yarn/bin:$PATH"

WORKDIR "/work"
