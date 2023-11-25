deploy:
	sudo git pull &&\
	cd /home/isucon/webapp/rust/ &&\
	cargo build --release &&\
	sudo systemctl restart isupipe-rust

rstatus:
	sudo systemctl status isupipe-rust

log:
	journalctl -u isupipe-rust -f -n100
