# remove ruby
sudo apt-get remove ruby

# install essential apps
sudo apt-get update -y -q
sudo apt-get upgrade -y -q
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


#Load RVM into a shell session *as a function*
if [[ -s "$HOME/.rvm/scripts/rvm" ]] ; then

  # First try to load from a user install
  source "$HOME/.rvm/scripts/rvm"

elif [[ -s "/usr/local/rvm/scripts/rvm" ]] ; then

 # Then try to load from a root install
  source "/usr/local/rvm/scripts/rvm"

else

  printf "ERROR: An RVM installation was not found.\n"

fi

#install latest version of ruby and set as the default.
rvm install ruby 2.3.0
rvm --default use ruby 2.3.0

#install bundler.
gem install bundler