#!/bin/bash

echo "[+] Bắt đầu chặn domain speedtest trong /etc/hosts..."

domains=(
    www.speedtest.net speedtest.vn fast.com www.speedcheck.org speedtest.vnpt.vn
    pcmag.speedtestcustom.com www.speed.io speedtest.telstra.com www.orange.md
    speedtest.cesnet.cz speedtest.xfinity.com www.nperf.com nperf.net www.speakeasy.net
    www.highspeedinternet.com speed.cloudflare.com proof.ovh.net
    speedtest.tele2.net speedtest.att.com speedtest.bt.com speedtest.verizon.com
    speedtest.singtel.com speedtest.myrepublic.net speedtest.gigabit.io speedtest.meter.net
    openspeedtest.com testmy.net broadbandtest.ookla.com
)

for domain in "${domains[@]}"; do
    if ! grep -q "$domain" /etc/hosts; then
        echo "127.0.0.1   $domain" >> /etc/hosts
        echo "Đã chặn $domain"
    else
        echo "Đã tồn tại $domain"
    fi
done

echo "✅ Đã hoàn tất chặn domain speedtest!"
