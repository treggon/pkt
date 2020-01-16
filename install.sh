sudo add-apt-repository universe
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt install pkg-config libsodium-dev autoconf-archive git libssl-dev build-essential -y
sudo apt install npm -y
git clone https://github.com/cjdelisle/PacketCrypt
cd PacketCrypt
./autogen.sh
./configure
make
npm install -y
cp ../dowork.sh . 
chmod +x dowork.sh
