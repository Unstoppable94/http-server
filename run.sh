docker run \
    -v /root/upload:/home/wingarden/upload \
    -p 2222:22 -d atmoz/sftp:alpine-3.6 \
    wingarden:wingarden:1001


sftp -P 2222 wingarden@localhost:/home/wingarden/ <<EOF
put ./run.sh   
exit
EOF


ssh-keygen -t ed25519 -f /root/ssh_host_ed25519_key < /dev/null
ssh-keygen -t rsa -b 4096 -f /root/ssh_host_rsa_key < /dev/null

docker run --rm -ti -p 8080:8080 --name http-server -v /root/uplad:/public \
	10.0.2.50/winhong/docker-http-server 
curl localhost:8080/docker-compose.yml