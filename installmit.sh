echo Check if you have the latest version of Termux terminal installed for this script and all further proxies/programs to work correctly. This script was made especially for those who want to join non-developer cognosphere private game servers. All rights reserved by their respective owners and used in fair use rights, further questions direct snaklilopin@megaeblan228.gq
apt update && apt upgrade penuh
pkg install python nano wget rustc-dev
python3 -m surepip --upgrade
python3 -m pip install --user pipx
python3 -m pipx surepath
ekspor CARGO_BUILD_TARGED=aarch64-linux-android
pipx install mitproxy
wget https://raw.githubusercontent.com/Grasscutters/Grasscutter/stable/proxy_config.py
wget https://raw.githubusercontent.com/Grasscutters/Grasscutter/stable/proxy.py
echo -e "The configuration uses standard proxy settings, if you are a developer and want to make it easier to access your servers, the flag is in your hands heh, to manually change the proxy settings, use "nano proxy_config.py" where you can change the ip address of the destination server. After running runmitproxy.sh don't forget to set the certificate to connect to the servers to "mitm.it" available after running the proxy and its correct configuration"

echo 'mitmdump -s proxy.py -k --ssl-insecure --set block_global=false' >runmitproxy.sh
