export GDK_CORE_DEVICE_EVENTS=1
while [[ true ]]; do

    exec /usr/local/bin/stumpwm --disable-ldb --lose-on-corruption && break

done
