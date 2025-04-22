set dotenv-load

sudo := require("sudo")
docker := require("docker")

# default recipe to display help information
default:
    @just --list

# run docker compose
docker *ARGS:
    sudo docker compose {{ARGS}}

# start services
run:
    just docker up -d --build --remove-orphans

# view local docker logs
logs SERVICE:
    just docker logs {{SERVICE}} --follow

# execute command inside docker container
exec SERVICE *CMD:
    just docker exec -it {{SERVICE}} {{CMD}}

# setup local environment
setup:
    #!/usr/bin/env bash
    cat <<EOF > .env
    # https://login.tailscale.com/admin/settings/keys/
    TS_AUTHKEY="tskey-auth-xxxxxxxxxxxxxxxxx-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
    EOF
    echo "Created local .env config file"

