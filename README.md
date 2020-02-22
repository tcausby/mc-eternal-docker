# mc-eternal-docker
Docker container for MC.Eternal modpack

# Usage

Run the container and publish port 25565. You can mount `/srv/minecraft` to a volume if you want to edit the eula or config.

### Example

```bash
# Create volume for Minecraft files
$ docker volume create mc-eternal-vol
mc-eternal-vol
# Create container and mount Minecraft data to volume
$ docker run -v mc-eternal-vol:/srv/minecraft -p 25565:25565 -i -d mymindstorm/mc-eternal:1.3.3
6748a532e6e3241d22f25e55140c784be0b0a3f81e123b79cfaec5c4d502b245
# Agree to ELUA and change config
$ cd /var/lib/docker/volumes/mc-eternal-vol/_data
$ vi eula.txt
# Start the container again
$ docker start 6748a
# Connect to console
$ docker attach 6748a
```
