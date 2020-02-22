# mc-eternal-docker
Docker container for MC.Eternal modpack

# Usage

Run the container and publish port 25565. You can mount `/srv/minecraft` to a volume if you want to edit the eula or config.

### Example

```bash
# Create volume for Minecraft files
$ docker volume create
50675f28618df0e61f962f4c7cdd2c78391486228016d82dc713ea58eb4c8009
# Start container and mount Minecraft data to volume
$ docker run -v 50675f28618df0e61f962f4c7cdd2c78391486228016d82dc713ea58eb4c8009:/srv/minecraft -p 25565:25565 -i -d mymindstorm/mc-eternal:1.3.3
# Connect to console
# Edit config
```
