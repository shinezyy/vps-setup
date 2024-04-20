touch ~/.curlrc
echo "proxy = http://127.0.0.1:1091" >> ~/.curlrc

touch ~/.wgetrc
echo '''use_proxy=yes
http_proxy=127.0.0.1:8080
https_proxy=127.0.0.1:8080
'''>> ~/.wgetrc

echo '''[https]
	proxy = http://127.0.0.1:1091
[http]
	proxy = http://127.0.0.1:1091
''' >> ~/.gitconfig

