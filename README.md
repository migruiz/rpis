# run
after boot:
curl -fsSL https://raw.githubusercontent.com/migruiz/rpis/master/init.sh -o init.sh && sh init.sh


after restart
curl -fsSL https://raw.githubusercontent.com/migruiz/rpis/master/docker.sh -o docker.sh && sh docker.sh
