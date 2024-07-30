# tailscale-derper

A docker compose setup to run custom relay using tailscale [derper](https://tailscale.com/kb/1118/custom-derp-servers).


## How it works?

In order to verify clients, derper needs to be connected to the tailscale network. We can do this in multiple ways but in this particular setup, we use a pre-auth key to join the tailscale network.

Now that we have joined the tailscale network, we need to provide derper with the socket to communicate with tailscaled so it can verify clients. We do this by first exposing the tailscale socket by using bind mounts and then mounting it to derper.

If you don't need to verify clients and run derper with public access, you can check the [docker-compose.simple.yml](examples/docker-compose.simple.yml) example.


## Configuration

Derper can easily be configure by using command line arguments and since we are using official tailscale image, it can be configured using environment variables found on [Dockerhub](https://hub.docker.com/r/tailscale/tailscale).