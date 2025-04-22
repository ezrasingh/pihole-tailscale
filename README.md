## Pi-hole & Tailscale 🔒

Run [Pi-hole](https://pi-hole.net/) in your [Tailnet](https://tailscale.com/)

## Environment Variables

| Key                | Description                                                                                |
| ------------------ | ------------------------------------------------------------------------------------------ |
| `TS_AUTHKEY` | Tailscale client auth key (see, [Tailscale Admin](https://login.tailscale.com/admin/settings/keys/)) |

## Getting Started

### Required

- [`docker`](https://docs.docker.com/engine/install/) - An open source containerization technology for building and containerizing applications

### Optional

- [`just`](https://github.com/casey/just#just) - A handy way to save and run project-specific commands

### Local Environment

To generate your local `.env` file run the `setup` recipe with `just setup`

To list all available recipes run `just`


### Docker Compose

If you have `docker` installed you can run the platform locally using `just run`

To view logs of a service run `just logs <service-name>` for example `just logs traefik`
