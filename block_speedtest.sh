#!/bin/bash
for domain in \
    www.speedtest.net speedtest.vn fast.com www.speedcheck.org speedtest.vnpt.vn \
    pcmag.speedtestcustom.com www.speed.io speedtest.telstra.com www.orange.md \
    speedtest.cesnet.cz speedtest.xfinity.com www.nperf.com nperf.net nperf.com www.speakeasy.net \
    www.highspeedinternet.com speed.cloudflare.com proof.ovh.net; do
    if ! grep -q "$domain" /etc/hosts; then
        echo "127.0.0.1   $domain" >> /etc/hosts
    fi
done

echo "✅ Đã chặn Speedtest!"
