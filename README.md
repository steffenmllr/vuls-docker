# vuls-docker


##### Run the Scanner

```
docker run -it --rm \
-v $(pwd)/logs:/var/log/vuls \
-v $(pwd)/config.toml:/app/config.toml \
-v $(pwd)/vuls.sqlite3:/app/vuls.sqlite3 \
-v /path/to/.ssh/id_rsa:/app/id_rsa steffenmllr/vuls-docker scan
```