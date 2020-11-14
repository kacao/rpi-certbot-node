# rpi-certbot-node
Docker image with Certbot and Nodejs for arm32v7 (Raspberry Pi)

Example:
`
docker run -d \
  -v /path/to/app/dir:/app \
  -e CERT_DOMAIN=lantern-receipts.tealatte.co \
  -e CERT_EMAIL=khanhncao@gmail.com \
  -e APP_ENTRY=index.mjs \
  -p 80:80 \
  -p 443:443 \
  --name app \
  kacao/rpi-certbot-node
`
