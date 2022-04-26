# rm -rf alist* data/ #Uncomment this line to update
if [ ! -f "artalk-go" ];then
curl -L  -o artalk.tar.gz https://github.com/ArtalkJS/ArtalkGo/releases/download/v2.1.4/artalk-go_v2.1.4_linux_amd64.tar.gz
tar -zxvf artalk.tar.gz
mv artalk-go_v2.1.4_linux_amd64.tar.gz artalk
mv -b artalk/* ./ 
mv -b artalk/.[^.]* ./ 
rm -rf *~ 
rm -rf artalk.tar.gz
rm -rf artalk
fi
./artalk-go upgrade
./artalk-go serve
