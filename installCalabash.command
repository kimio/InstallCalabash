echo "-----Instalação Calabash"
delay 20

echo "-----Instalando o HomeBrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "-----Instalando o GPG"
brew install gpg

echo "-----Instalando o RVM"
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable

echo "-----Instalando o Ruby na versão 2.3.1"
rvm install 2.3.1

//para listar a gem
//gem list

echo "-----Instalando o CS BDD(deprecated) - dependencia para calabash https://github.com/concretesolutions/sunomono"
gem install cs-bdd

echo "-----Instalando o Sunomono"
gem install sunomono

echo "-----Instalando o Blunder - gerenciador de dependencias para projeto"
gem install blunder

echo "-----Clonando projeto para teste"
git clone https://github.com/fabianofranca/digitaldaycalabash

echo "-----Entrar na pasta do projeto teste"
cd digitaldaycalabash

echo "-----Checkout"
git checkout cross-platform

echo "Bundle install"
bundle install

echo "-----Rodando o teste"
ruby run.rb ios
