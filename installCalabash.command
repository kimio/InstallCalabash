echo "-----Instalando o HomeBrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "-----Instalando o GPG"
brew install gpg

echo "-----Instalando o RVM com ruby mais estável"
gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable --ruby

//para listar a gem
//gem list

echo "-----Instalando o CS BDD(deprecated) - dependencia para calabash https://github.com/concretesolutions/sunomono"
gem install cs-bdd

echo "-----Instalando o Sunomono"
gem install sunomono

echo "-----Instalando o Blunder - gerenciador de dependencias para projeto"
gem install bundler

echo "-----Clonando projeto para teste"
sudo git clone https://github.com/fabianofranca/digitaldaycalabash

echo "-----Entrar na pasta do projeto teste"
cd digitaldaycalabash

echo "-----Checkout"
git checkout cross-platform

echo "Bundle install"
bundle install

echo "-----Rodando o teste"
ruby run.rb ios
