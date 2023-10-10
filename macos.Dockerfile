#FROM sickcodes/docker-osx:latest
#
#RUN xcode-select --install
#
#RUN curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
##source "$HOME/.cargo/env"
#RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
#
#
#wget https://nodejs.org/dist/v18.0.0/node-v18.0.0-darwin-x64.tar.gz
#tar -xzvf node-v18.0.0-darwin-x64.tar.gz
#sudo mv node-v18.0.0-darwin-x64 /usr/local/nodejs
#export PATH=$PATH:/usr/local/nodejs/bin
#node -v
#
#RUN #/home/arch/.nvm/nvm.sh
##RUN eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
##RUN brew install node@18
#
### Install base utils
##RUN apt-get update
##RUN apt-get install -y \
##  curl \
##  psmisc
##
### Install Node.js
##RUN curl -fsSL "https://deb.nodesource.com/setup_18.x" | bash -
##RUN apt-get install -y nodejs
##
### Install Yarn
##RUN corepack enable
##
#### Install Tarpaulin
###RUN cargo install cargo-tarpaulin
##
### Install Tauri dependencies
### https://tauri.app/v1/guides/getting-started/prerequisites#setting-up-linux
##RUN apt-get install -y \
##  libwebkit2gtk-4.0-dev \
##  build-essential \
##  curl \
##  wget \
##  libssl-dev \
##  libgtk-3-dev \
##  libayatana-appindicator3-dev \
##  librsvg2-dev
##
#### Install tauri-driver dependencies
###RUN apt-get install -y \
###  webkit2gtk-4.0-dev \
###  webkit2gtk-driver \
###  xvfb
##
#### Install tauri-driver
#### https://tauri.app/v1/guides/testing/webdriver/introduction#system-dependencies
###RUN cargo install tauri-driver
##
##CMD ["/bin/bash"]