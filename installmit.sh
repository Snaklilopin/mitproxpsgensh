echo Check if you have the latest version of Termux terminal installed for this script and all further proxies/programs to work correctly. This script was made especially for those who want to join non-developer cognosphere private game servers. All rights reserved by their respective owners and used in fair use rights, further questions direct snaklilopin@megaeblan228.gq
sleep 10
apt update && apt full-upgrade -y
pkg install python nano wget rustc-dev -y
python3 -m ensurepip --upgrade
python3 -m pip install --user pipx
python3 -m pipx ensurepath
echo Maybe not working.. idk for what this not correctly export cargo build
sleep 5
export CARGO_BUILD_TARGET=aarch64-linux-android
pipx install mitmproxy
wget https://raw.githubusercontent.com/Grasscutters/Grasscutter/stable/proxy_config.py
wget https://raw.githubusercontent.com/Grasscutters/Grasscutter/stable/proxy.py
echo -e "The configuration uses standard proxy settings, if you are a developer and want to make it easier to access your servers, the flag is in your hands heh, to manually change the proxy settings, use "nano proxy_config.py" where you can change the ip address of the destination server. After chmod +x runmitproxy.sh and running ./runmitproxy.sh don't forget to set the certificate to connect to the servers to "mitm.it" available after running the proxy and its correct configuration"

echo 'mitmdump -s proxy.py -k --ssl-insecure --set block_global=false' >runmitproxy.sh
