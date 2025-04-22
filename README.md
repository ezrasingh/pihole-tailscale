## Pi-hole & Tailscale 🔒

Run [Pi-hole](https://pi-hole.net/) in your [Tailnet](https://tailscale.com/)

## Environment Variables

| Key                 | Description                                                                                                         | Default            |
| ------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------ |
| `TZ`                | Timezone for your location (see [tz database list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones))   | `America/New_York` |
| `PIHOLE_VERSION`    | Pi-hole docker version tag (see [`pihole/pihole` tags](https://hub.docker.com/r/pihole/pihole/tags/))               | `latest`           |
| `TAILSCALE_VERSION` | Tailscale docker version tag (see [`tailscale/tailscale` tags](https://hub.docker.com/r/tailscale/tailscale/tags/)) | `latest`           |
| `TS_AUTHKEY`        | Tailscale client auth key (see [Tailscale Admin](https://login.tailscale.com/admin/settings/keys/))                 | *required*         |


## Getting Started

### Required

- [`docker`](https://docs.docker.com/engine/install/) - An open source containerization technology for building and containerizing applications

### Optional

- [`just`](https://github.com/casey/just#just) - A handy way to save and run project-specific commands

### Local Environment

To generate your local `.env` file, run the setup recipe with `just setup`.

To see a list of all available commands, use `just`.


### Docker Compose

Start the Pi-hole service inside your Tailscale network with `just run`.

To view logs for a specific service, run `just logs <service-name>`, for example: `just logs pihole` or `just logs tailscale`.

To stop the Pi-hole service, use `just stop`.

