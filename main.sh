# rm -rf alist* data/ #Uncomment this line to update
if [ ! -f "artalk-go" ];then
curl -L https://github.com/ArtalkJS/ArtalkGo/releases/download/v2.1.2/artalk-go_v2.1.2_linux_amd64.tar.gz
tar -zxvf artalk-go_v2.1.2_linux_amd64.tar.gz
rm -f artalk-go_v2.1.2_linux_amd64-go_v2.1.2_linux_amd64
mv -b artalk-go_v2.1.2_linux_amd64/* ./ 
mv -b artalk-go_v2.1.2_linux_amd64/.[^.]* ./ 
rm -rf *~ 
rm -rf artalk-go_v2.1.2_linux_amd64
fi
./artalk-go serve