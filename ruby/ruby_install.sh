sudo apt-get update
sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev
echo "==============================================================="
echo "Cloning the rbenv repository from git"
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo "==============================================================="
echo "Adding rbenv to command line path"
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc
echo "==============================================================="
echo "rbenv version list"
type rbenv
echo "==============================================================="
echo "Installing ruby build"
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo "==============================================================="
echo "Available version to install"
rbenv install -l
echo "==============================================================="
echo "Installing version 2.3.1"
rbenv install 2.3.1
rbenv global 2.3.1
echo "==============================================================="
echo "Ruby version is :"
ruby -v
echo "==============================================================="