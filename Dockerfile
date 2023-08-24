FROM debian:latest

# Create a group and user
RUN adduser tester

RUN apt update && apt upgrade -y
RUN apt install -y zsh git wget exa fzf zoxide neovim
RUN usermod -s $(which zsh) tester

# Tell docker that all future commands should run as the user tester
USER tester

RUN PATH="$PATH:/usr/bin/zsh"
WORKDIR /home/tester

# zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1
RUN wget https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh -O - | zsh || true
# RUN wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

COPY zshrc ./.zshrc

CMD [ "zsh" ]
