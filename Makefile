.PHONY: run multi-run install-systemd-service help

run:
	python noisy.py --config config.json

multi-run:
	bash -c "trap 'docker-compose down' EXIT; cd examples/docker-compose && docker-compose up --build --scale noisy=$(scale)"

install-systemd-service:
	sudo cp examples/systemd/noisy.service /etc/systemd/system
	sudo systemctl daemon-reload
	sudo systemctl enable noisy && sudo systemctl start noisy
	echo "you can check the output with `journalctl -f -n noisy`"

help:
	python noisy.py --help

