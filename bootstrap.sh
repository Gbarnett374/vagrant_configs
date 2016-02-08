# remove ruby
sudo apt-get remove ruby

# install essential apps
sudo apt-get install -y -q \
  build-essential \
  git \
  rake \
  tree \
  nodejs \
  libgmp-dev 

# install ruby using rvm
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable --ruby

# creates the basic directory
mkdir -p /home/vagrant/www