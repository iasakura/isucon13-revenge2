deploy:
	sudo git pull
	pushd webapp/rust/
	cargo build --release
	sudo systemctl restart isupipe-rust
	popd

rstatus:
	sudo systemctl status isupipe-rust
