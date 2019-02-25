# Examples

## Run multiple containers using `docker-compose`

`docker-compose` is useful if you want to run more than one container at the same time, to generate more noise. To do so, simply run the following commands:
```
$ cd examples/docker-compose
$ docker-compose build
$ docker-compose up --scale noisy=<number-of-containers>
```

## Set noisy to run automatically via systemd

You can use systemd to start noisy.py automatically on every boot. The provided
example service assumes that you have the script copied to /opt/noisy and that
noisy.py and config.json are readable by the 'noisy' user. You can change these
values to suit your needs.

To configure the service:
```
$ sudo cp examples/systemd/noisy.service /etc/systemd/system
$ sudo systemctl daemon-reload
$ sudo systemctl enable noisy && sudo systemctl start noisy
```

You can view the script's output by running:
```
$ journalctl -f -n noisy
```

## Bulk update root urls

You can further tweak the noise generation by adding more root urls to visit eg.: Alexa top 1 million sites.
An example bash script which does this can be found here
You can run it from the project folder:

```bash
curl -sSL https://gist.githubusercontent.com/szepnapot/6fffd93688556f97e4a8f79837a1c0ca/raw/b7853a7038d1967dbe8fa94ff85ef5624a8d27d1/update_root_urls.sh | bash
```
