# Dockerize Zap-Zsh

This project allows me to test how [zap-zsh](https://www.zapzsh.org) works without having to run it on my system.

## Steps
### Create image

`sudo docker image build -t zsh-debian .`

### Run container

`docker run -it --user tester zsh-debian`
