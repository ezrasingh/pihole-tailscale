set dotenv-load

docker := require("docker")

# default recipe to display help information
default:
    @just --list

alias d := docker
alias l := logs
alias s := services
alias r := run
alias e := exec

# run docker compose
docker *ARGS:
    sudo docker compose {{ARGS}}

# list docker compose services
services:
    just docker config --services | sort

# start services
run:
    just docker up -d --build --remove-orphans

# stop services
stop:
    just docker down --remove-orphans

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
    TAILSCALE_VERSION="latest"
    PIHOLE_VERSION="latest"
    TZ="America/New_York"

    # https://login.tailscale.com/admin/settings/keys/
    TS_AUTHKEY="tskey-auth-xxxxxxxxxxxxxxxxx-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
    EOF
    echo "Created local .env config file"

