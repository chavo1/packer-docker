#!/bin/bash
  
which vim jq curl docker make ruby || {
  sudo apt-get update
  sudo apt-get install -y vim jq curl docker.io make ruby
  sudo usermod -a -G docker ubuntu
  sudo gem install rubyzip
}

which packer || {
  cd /usr/local/bin
  curl -sSL https://raw.githubusercontent.com/kikitux/download-hashicorp-tools/master/download-packer.rb | sudo ruby
}
