all: 
	cd rkvm && cargo build --release
	cd wl-clipboard-sync && meson build && cd build && ninja
	cd piknik && go build
	
clean:
	cd rkvm && cargo clean
	cd wl-clipboard-sync && rm -rf build
	cd piknik && go clean

install_server:
	cd rkvm/target/release && cp rkvm-server /usr/bin/
	cd piknik && cp piknik /usr/bin 
	cd wl-clipboard-sync/build/src && cp wl-copy /usr/bin/wl-piknik-copy

install_client:
	cd rkvm/target/release && cp rkvm-client /usr/bin/
	cd piknik && cp piknik /usr/bin 
	cd wl-clipboard-sync/build/src && cp wl-copy /usr/bin/wl-piknik-copy
