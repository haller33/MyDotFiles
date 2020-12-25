# public-resolvers

This is an extensive list of public DNS resolvers supporting the
DNSCrypt and DNS-over-HTTP2 protocols.

This list is maintained by Frank Denis <j @ dnscrypt [.] info>

Warning: it includes servers that may censor content, servers that don't
verify DNSSEC records, and servers that will collect and monetize your
queries.

Adjust the `require_*` options in dnscrypt-proxy to filter that list
according to your needs.

To use that list, add this to the `[sources]` section of your
`dnscrypt-proxy.toml` configuration file:

    [sources.'public-resolvers']
        urls = ['https://raw.githubusercontent.com/DNSCrypt/dnscrypt-resolvers/master/v3/public-resolvers.md', 'https://download.dnscrypt.info/resolvers-list/v3/public-resolvers.md']
	    minisign_key = 'RWQf6LRCGA9i53mlYecO4IzT51TGPpvWucNSCh1CBM0QTaLn73Y7GFO3'
	        cache_file = 'public-resolvers.md'

--


## a-and-a

Non-logging DoH server in the UK operated by Andrews & Arnold Ltd, a
company providing Internet connectivity and VoIP in the UK.

https://www.aa.net.uk/legal/dohdot-disclaimer/

sdns://AgcAAAAAAAAADTIxNy4xNjkuMjAuMjOgPhoaD2xT8-l6SS1XCEtbmAcFnuBXqxUFh2_YP9o9uDggMob_ZaZfrzIIXuoTiMNzi6fjeHPJBszjxKKLTMKliYgNZG5zLmFhLm5ldC51awovZG5zLXF1ZXJ5


## aaflalo-me-gcp

Same as aaflalo-me-nyc. Use aaflalo-me-nyc.

Kept for backward compatibility with people using this server.

https://www.aaflalo.me/2019/01/dns-over-https-server-aaflalo-me/

sdns://AgMAAAAAAAAADjE2OC4yMzUuODEuMTY3oD4aGg9sU_PpekktVwhLW5gHBZ7gV6sVBYdv2D_aPbg4IDKG_2WmX68yCF7qE4jDc4un43hzyQbM48Sii0zCpYmIEmRucy1ueWMuYWFmbGFsby5tZQovZG5zLXF1ZXJ5


## aaflalo-me-nyc

DNS-over-HTTPS server running dns-over-https with PiHole for Adblocking in NYC, USA.

Non-logging, AD-filtering, supports DNSSEC.
Hosted in New York on a RamNode Cloud Instance.

https://www.aaflalo.me/2019/01/dns-over-https-server-aaflalo-me/

sdns://AgMAAAAAAAAADjE2OC4yMzUuODEuMTY3oD4aGg9sU_PpekktVwhLW5gHBZ7gV6sVBYdv2D_aPbg4IDKG_2WmX68yCF7qE4jDc4un43hzyQbM48Sii0zCpYmIEmRucy1ueWMuYWFmbGFsby5tZQovZG5zLXF1ZXJ5


## acsacsar-ams-ipv4

Public non-censoring, non-logging, DNSSEC-capable, DNSCrypt-enabled DNS resolver hosted on Scaleway by @acsacsar (twitter)

sdns://AQcAAAAAAAAADTUxLjE1OC4xNjYuOTcgAyfzz5J-mV9G-yOB4Hwcdk7yX12EQs5Iva7kV3oGtlEgMi5kbnNjcnlwdC1jZXJ0LmFjc2Fjc2FyLWFtcy5jb20


## acsacsar-ams-ipv6

Public non-censoring, non-logging, DNSSEC-capable, DNSCrypt-enabled DNS resolver hosted on Scaleway by @acsacsar (twitter)

sdns://AQcAAAAAAAAAFlsyMDAxOmJjODoxODI0OjczODo6MV0gAyfzz5J-mV9G-yOB4Hwcdk7yX12EQs5Iva7kV3oGtlEgMi5kbnNjcnlwdC1jZXJ0LmFjc2Fjc2FyLWFtcy5jb20


## adfree.usableprivacy.net

Public non-logging DoH server with advertising and tracker filtering.

Hosted in Austria/Europe, details see: [docs.usableprivacy.com](https://docs.usableprivacy.com)

sdns://AgMAAAAAAAAADzE0OS4xNTQuMTUzLjE1M6A-GhoPbFPz6XpJLVcIS1uYBwWe4FerFQWHb9g_2j24OCAyhv9lpl-vMghe6hOIw3OLp-N4c8kGzOPEootMwqWJiBhhZGZyZWUudXNhYmxlcHJpdmFjeS5uZXQKL2Rucy1xdWVyeQ


## adguard-dns

Remove ads and protect your computer from malware

Warning: This server is incompatible with anonymization.

sdns://AQIAAAAAAAAAFDE3Ni4xMDMuMTMwLjEzMDo1NDQzINErR_JS3PLCu_iZEIbq95zkSV2LFsigxDIuUso_OQhzIjIuZG5zY3J5cHQuZGVmYXVsdC5uczEuYWRndWFyZC5jb20


## adguard-dns-doh

Remove ads and protect your computer from malware (over DoH)

sdns://AgMAAAAAAAAADzE3Ni4xMDMuMTMwLjEzMCD5_zfwLmMstzhwJcB-V5CKPTcbfJXYzdA5DeIx7ZQ6Eg9kbnMuYWRndWFyZC5jb20KL2Rucy1xdWVyeQ


## adguard-dns-family

Adguard DNS with safesearch and adult content blocking

Warning: This server is incompatible with anonymization.

sdns://AQIAAAAAAAAAFDE3Ni4xMDMuMTMwLjEzMjo1NDQzILgxXdexS27jIKRw3C7Wsao5jMnlhvhdRUXWuMm1AFq6ITIuZG5zY3J5cHQuZmFtaWx5Lm5zMS5hZGd1YXJkLmNvbQ


## adguard-dns-family-doh

Adguard DNS with safesearch and adult content blocking (over DoH)

sdns://AgMAAAAAAAAADzE3Ni4xMDMuMTMwLjEzMiD5_zfwLmMstzhwJcB-V5CKPTcbfJXYzdA5DeIx7ZQ6EhZkbnMtZmFtaWx5LmFkZ3VhcmQuY29tCi9kbnMtcXVlcnk


## adguard-dns-family-ipv6

Adguard DNS with safesearch and adult content blocking

Warning: This server is incompatible with anonymization.

sdns://AQMAAAAAAAAAGlsyYTAwOjVhNjA6OmJhZDI6MGZmXTo1NDQzIIwhF6nrwVfW-2QFbwrbwRxdg2c0c8RuJY2bL1fU7jUfITIuZG5zY3J5cHQuZmFtaWx5Lm5zMi5hZGd1YXJkLmNvbQ


## adguard-dns-ipv6

Remove ads and protect your computer from malware

Warning: This server is incompatible with anonymization.

sdns://AQMAAAAAAAAAGVsyYTAwOjVhNjA6OmFkMjowZmZdOjU0NDMggdAC02pMpQxHO3R5ZQ_hLgKzIcthOFYqII5APf3FXpQiMi5kbnNjcnlwdC5kZWZhdWx0Lm5zMi5hZGd1YXJkLmNvbQ


## adguard-dns-unfiltered

AdGuard public DNS servers without filters

Warning: This server is incompatible with anonymization.

sdns://AQcAAAAAAAAAFDE3Ni4xMDMuMTMwLjEzNjo1NDQzILXoRNa4Oj4-EmjraB--pw3jxfpo29aIFB2_LsBmstr6JTIuZG5zY3J5cHQudW5maWx0ZXJlZC5uczEuYWRndWFyZC5jb20


## alidns-doh

A public DNS resolver that supports DoH/DoT in mainland China, provided by Alibaba-Cloud.

Warning: GFW filtering rules are applied by that resolver.

Homepage: https://alidns.com/

sdns://AgAAAAAAAAAACTIyMy41LjUuNSCoF6cUD2dwqtorNi96I2e3nkHPSJH1ka3xbdOglmOVkQ5kbnMuYWxpZG5zLmNvbQovZG5zLXF1ZXJ5


## ams-dnscrypt-nl

Resolver in Amsterdam. Dnscrypt protocol. Non-logging, non-filtering, DNSSEC.

sdns://AQcAAAAAAAAAEjUxLjE1LjEyNC4yMDg6NDM0MyC8E4j1dj497HXxyQ_JFb-2iurf6xxF9phRgGOcYOfxYh8yLmRuc2NyeXB0LWNlcnQuYW1zLWRuc2NyeXB0LW5s


## ams-dnscrypt-nl-ipv6

Resolver in Amsterdam. Dnscrypt protocol. Non-logging, non-filtering, DNSSEC.

sdns://AQcAAAAAAAAAHFsyMDAxOmJjODoxODMwOjFlMTg6OjFdOjQzNDMgvBOI9XY-Pex18ckPyRW_torq3-scRfaYUYBjnGDn8WIfMi5kbnNjcnlwdC1jZXJ0LmFtcy1kbnNjcnlwdC1ubA


## ams-doh-nl

Resolver in Amsterdam. DoH protocol. Non-logging, non-filtering, DNSSEC.

sdns://AgcAAAAAAAAADTUxLjE1LjEyNC4yMDigPhoaD2xT8-l6SS1XCEtbmAcFnuBXqxUFh2_YP9o9uDggMob_ZaZfrzIIXuoTiMNzi6fjeHPJBszjxKKLTMKliYgSZG5zbmwuYWxla2JlcmcubmV0Ci9kbnMtcXVlcnk


## ams-doh-nl-ipv6

Resolver in Amsterdam. DoH protocol. Non-logging, non-filtering, DNSSEC.

sdns://AgcAAAAAAAAAF1syMDAxOmJjODoxODMwOjFlMTg6OjFdoD4aGg9sU_PpekktVwhLW5gHBZ7gV6sVBYdv2D_aPbg4IDKG_2WmX68yCF7qE4jDc4un43hzyQbM48Sii0zCpYmIEmRuc25sLmFsZWtiZXJnLm5ldAovZG5zLXF1ZXJ5


## arapurayil-dnscrypt

Hosted in Mumbai, India (https://www.dns.arapurayil.com)
Non-logging | Filtering | DNSSEC | QNAME Minimization | No EDNS Client-Subnet
Blocks ads, trackers, resource-abusers, malware, and phishing.

sdns://AQMAAAAAAAAAEDMuNy4xNTYuMTI4Ojg0NDMgDXD9OSDJDwe2q9bi836PURTP14NLYS03RbDq6j891ZciMi5kbnNjcnlwdC1jZXJ0LmRucy5hcmFwdXJheWlsLmNvbQ


## arapurayil-doh

Hosted in Mumbai, India (https://www.dns.arapurayil.com)
Non-logging | Filtering | DNSSEC | QNAME Minimization | No EDNS Client-Subnet
Blocks ads, trackers, resource-abusers, malware, and phishing.

sdns://AgMAAAAAAAAAAKA-GhoPbFPz6XpJLVcIS1uYBwWe4FerFQWHb9g_2j24OCAyhv9lpl-vMghe6hOIw3OLp-N4c8kGzOPEootMwqWJiBJkbnMuYXJhcHVyYXlpbC5jb20KL2Rucy1xdWVyeQ


## arvind-io

Public resolver by EnKrypt (https://arvind.io).
Hosted in Bangalore, India.

Non-logging, non-filtering, supports DNSSEC.

sdns://AQcAAAAAAAAAFDIwNi4xODkuMTQyLjE3OTo1MzUzII5GJ8c4g6hRAwghulrn5dBB9KrvlbeCkBbLZR2HwyjJGTIuZG5zY3J5cHQtY2VydC5hcnZpbmQuaW8


## att

AT&T test DoH server.

sdns://AgQAAAAAAAAAAKBLTrSwdCmLgotcADCVoQtFI_uVHAyINIsJxT5bq6QIoyD2Hldod9qWUClMzLX5bHX8txvaG7xGRjZ8Tr7aidcxjxBkb2h0cmlhbC5hdHQubmV0Ci9kbnMtcXVlcnk


## bcn-dnscrypt

Resolver in Barcelona, Spain. DNSCrypt protocol. Non-logging, non-filtering, DNSSEC.

sdns://AQcAAAAAAAAAEzE4NS4yNTMuMTU0LjY2OjQzNDMg_IlDWhFp1tL1VycXVO3QTEiQIKG_1OwG4tNTAD-nLj0cMi5kbnNjcnlwdC1jZXJ0LmJjbi1kbnNjcnlwdA


## bcn-doh

Resolver in Barcelona, Spain. DoH protocol. Non-logging, non-filtering, DNSSEC.

sdns://AgcAAAAAAAAADjE4NS4yNTMuMTU0LjY2oD4aGg9sU_PpekktVwhLW5gHBZ7gV6sVBYdv2D_aPbg4IDKG_2WmX68yCF7qE4jDc4un43hzyQbM48Sii0zCpYmIEmRuc2VzLmFsZWtiZXJnLm5ldAovZG5zLXF1ZXJ5


## bortzmeyer

Non-logging DoH server in France operated by Stéphane Bortzmeyer.

https://www.bortzmeyer.org/doh-bortzmeyer-fr-policy.html

sdns://AgcAAAAAAAAADDE5My43MC44NS4xMaA-GhoPbFPz6XpJLVcIS1uYBwWe4FerFQWHb9g_2j24OCAyhv9lpl-vMghe6hOIw3OLp-N4c8kGzOPEootMwqWJiBFkb2guYm9ydHptZXllci5mcgEv


## bortzmeyer-ipv6

Non-logging DoH server in France operated by Stéphane Bortzmeyer (IPv6 only).

https://www.bortzmeyer.org/doh-bortzmeyer-fr-policy.html

sdns://AgcAAAAAAAAAGVsyMDAxOjQxZDA6MzAyOjIyMDA6OjE4MF2gPhoaD2xT8-l6SS1XCEtbmAcFnuBXqxUFh2_YP9o9uDggMob_ZaZfrzIIXuoTiMNzi6fjeHPJBszjxKKLTMKliYgRZG9oLmJvcnR6bWV5ZXIuZnIBLw


## brahma-world

DNS-over-HTTPS / DNS over TLS server with PiHole. Filters ads, trackers and malware. DNSSEC ready, QNAME Minimization, No EDNS Client-Subnet.

Hosted in Frankfurt, Germany. (https://dns.brahma.world)

sdns://AgMAAAAAAAAADTk0LjIzNy44MC4yMTGgPhoaD2xT8-l6SS1XCEtbmAcFnuBXqxUFh2_YP9o9uDggMob_ZaZfrzIIXuoTiMNzi6fjeHPJBszjxKKLTMKliYgQZG5zLmJyYWhtYS53b3JsZAovZG5zLXF1ZXJ5


## brahma-world-ipv6

DNS-over-HTTPS / DNS over TLS server with PiHole. Filters ads, trackers and malware. DNSSEC ready, QNAME Minimization, No EDNS Client-Subnet.

Hosted in Frankfurt, Germany. (https://dns.brahma.world)

sdns://AgMAAAAAAAAAKFsyYTA0OjM1NDI6MTAwMDo5MTA6MzA1Yzo3NGZmOmZlMjk6N2MyNl2gPhoaD2xT8-l6SS1XCEtbmAcFnuBXqxUFh2_YP9o9uDggMob_ZaZfrzIIXuoTiMNzi6fjeHPJBszjxKKLTMKliYgQZG5zLmJyYWhtYS53b3JsZAovZG5zLXF1ZXJ5


## captnemo-in

Server running out of a Digital Ocean droplet in BLR1 region.
Maintained by Abhay Rana aka Nemo.

If you are within India, this might be a nice DNS server to use.

sdns://AQQAAAAAAAAAEjEzOS41OS40OC4yMjI6NDQzNCAFOt_yxaMpFtga2IpneSwwK6rV0oAyleham9IvhoceEBsyLmRuc2NyeXB0LWNlcnQuY2FwdG5lbW8uaW4


## circl-doh

DoH server operated by CIRCL, Computer Incident Response Center Luxembourg.

Hosted in Bettembourg, Luxembourg.

sdns://AgYAAAAAAAAADTE4NS4xOTQuOTQuNzEADGRucy5jaXJjbC5sdQovZG5zLXF1ZXJ5


## circl-doh-ipv6

DoH server operated by CIRCL, Computer Incident Response Center Luxembourg.

Hosted in Bettembourg, Luxembourg.

sdns://AgYAAAAAAAAAElsyYTAwOjU5ODA6OTQ6OjcxXQAMZG5zLmNpcmNsLmx1Ci9kbnMtcXVlcnk


## cisco

Remove your DNS blind spot (DNSCrypt protocol)

Warning: This server is incompatible with anonymization.

Warning: modifies your queries to include a copy of your network
address when forwarding them to a selection of companies and organizations.

sdns://AQEAAAAAAAAADjIwOC42Ny4yMjAuMjIwILc1EUAgbyJdPivYItf9aR6hwzzI1maNDL4Ev6vKQ_t5GzIuZG5zY3J5cHQtY2VydC5vcGVuZG5zLmNvbQ


## cisco-doh

Remove your DNS blind spot (DoH protocol)

Warning: modifies your queries to include a copy of your network
address when forwarding them to a selection of companies and organizations.

sdns://AgAAAAAAAAAADDE0Ni4xMTIuNDEuMiBoU4_HgY6B0kIqkGBjb6UoKkP2Dc4bumDC1_Orq2YAlw9kb2gub3BlbmRucy5jb20KL2Rucy1xdWVyeQ


## cisco-familyshield

Block websites not suitable for children (DNSCrypt protocol)

Warning: modifies your queries to include a copy of your network
address when forwarding them to a selection of companies and organizations.

Currently incompatible with DNS anonymization.

sdns://AQEAAAAAAAAADjIwOC42Ny4yMjAuMTIzILc1EUAgbyJdPivYItf9aR6hwzzI1maNDL4Ev6vKQ_t5GzIuZG5zY3J5cHQtY2VydC5vcGVuZG5zLmNvbQ


## cisco-familyshield-ipv6

Block websites not suitable for children (IPv6)

Warning: This server is incompatible with anonymization.

Warning: modifies your queries to include a copy of your network
address when forwarding them to a selection of companies and organizations.

sdns://AQEAAAAAAAAAEVsyNjIwOjExOTozNTo6MzVdILc1EUAgbyJdPivYItf9aR6hwzzI1maNDL4Ev6vKQ_t5GzIuZG5zY3J5cHQtY2VydC5vcGVuZG5zLmNvbQ


## cisco-ipv6

Cisco OpenDNS over IPv6 (DNSCrypt protocol)

Warning: This server is incompatible with anonymization.

Warning: modifies your queries to include a copy of your network
address when forwarding them to a selection of companies and organizations.

sdns://AQEAAAAAAAAAD1syNjIwOjA6Y2NjOjoyXSC3NRFAIG8iXT4r2CLX_WkeocM8yNZmjQy-BL-rykP7eRsyLmRuc2NyeXB0LWNlcnQub3BlbmRucy5jb20


## cisco-ipv6-doh

Cisco OpenDNS over IPv6 (DoH protocol)

Warning: modifies your queries to include a copy of your network
address when forwarding them to a selection of companies and organizations.

sdns://AgAAAAAAAAAAEFsyNjIwOjExOTpmYzo6Ml0gaFOPx4GOgdJCKpBgY2-lKCpD9g3OG7pgwtfzq6tmAJcPZG9oLm9wZW5kbnMuY29tCi9kbnMtcXVlcnk


## cleanbrowsing-adult

Blocks access to all adult, pornographic and explicit sites. It does
not block proxy or VPNs, nor mixed-content sites. Sites like Reddit
are allowed. Google and Bing are set to the Safe Mode.

Warning: This server is incompatible with anonymization.

By https://cleanbrowsing.org/

sdns://AQMAAAAAAAAAEzE4NS4yMjguMTY4LjEwOjg0NDMgvKwy-tVDaRcfCDLWB1AnwyCM7vDo6Z-UGNx3YGXUjykRY2xlYW5icm93c2luZy5vcmc


## cleanbrowsing-adult-ipv6

Blocks access to all adult, pornographic and explicit sites. It does
not block proxy or VPNs, nor mixed-content sites. Sites like Reddit
are allowed. Google and Bing are set to the Safe Mode.

Warning: This server is incompatible with anonymization.

By https://cleanbrowsing.org/

sdns://AQMAAAAAAAAAFVsyYTBkOjJhMDA6MTo6MV06ODQ0MyC8rDL61UNpFx8IMtYHUCfDIIzu8Ojpn5QY3HdgZdSPKRFjbGVhbmJyb3dzaW5nLm9yZw


## cleanbrowsing-family

Blocks access to all adult, pornographic and explicit sites. It also
blocks proxy and VPN domains that are used to bypass the filters.
Mixed content sites (like Reddit) are also blocked. Google, Bing and
Youtube are set to the Safe Mode.

Warning: This server is incompatible with anonymization.

By https://cleanbrowsing.org/

sdns://AQMAAAAAAAAAFDE4NS4yMjguMTY4LjE2ODo4NDQzILysMvrVQ2kXHwgy1gdQJ8MgjO7w6OmflBjcd2Bl1I8pEWNsZWFuYnJvd3Npbmcub3Jn


## cleanbrowsing-family-ipv6

Blocks access to all adult, pornographic and explicit sites. It also
blocks proxy and VPN domains that are used to bypass the filters.
Mixed content sites (like Reddit) are also blocked. Google, Bing and
Youtube are set to the Safe Mode.

Warning: This server is incompatible with anonymization.

By https://cleanbrowsing.org/

sdns://AQMAAAAAAAAAFFsyYTBkOjJhMDA6MTo6XTo4NDQzILysMvrVQ2kXHwgy1gdQJ8MgjO7w6OmflBjcd2Bl1I8pEWNsZWFuYnJvd3Npbmcub3Jn


## cleanbrowsing-security

Block access to phishing, malware and malicious domains. It does not block adult content.
By https://cleanbrowsing.org/

Warning: This server is incompatible with anonymization.

sdns://AQMAAAAAAAAAEjE4NS4yMjguMTY4Ljk6ODQ0MyC8rDL61UNpFx8IMtYHUCfDIIzu8Ojpn5QY3HdgZdSPKRFjbGVhbmJyb3dzaW5nLm9yZw


## cloudflare

Cloudflare DNS (anycast) - aka 1.1.1.1 / 1.0.0.1

sdns://AgcAAAAAAAAABzEuMC4wLjEAEmRucy5jbG91ZGZsYXJlLmNvbQovZG5zLXF1ZXJ5


## cloudflare-family

Cloudflare DNS (anycast) with malware protection and parental control - aka 1.1.1.3 / 1.0.0.3

sdns://AgMAAAAAAAAABzEuMC4wLjMAGWZhbWlseS5jbG91ZGZsYXJlLWRucy5jb20KL2Rucy1xdWVyeQ


## cloudflare-family-ipv6

Cloudflare DNS over IPv6 (anycast) with malware protection and parental control

sdns://AgMAAAAAAAAAFlsyNjA2OjQ3MDA6NDcwMDo6MTExM10AGWZhbWlseS5jbG91ZGZsYXJlLWRucy5jb20KL2Rucy1xdWVyeQ
sdns://AgMAAAAAAAAAFlsyNjA2OjQ3MDA6NDcwMDo6MTAwM10AGWZhbWlseS5jbG91ZGZsYXJlLWRucy5jb20KL2Rucy1xdWVyeQ


## cloudflare-ipv6

Cloudflare DNS over IPv6 (anycast)

sdns://AgcAAAAAAAAAFlsyNjA2OjQ3MDA6NDcwMDo6MTExMV0AIDFkb3QxZG90MWRvdDEuY2xvdWRmbGFyZS1kbnMuY29tCi9kbnMtcXVlcnk
sdns://AgcAAAAAAAAAFlsyNjA2OjQ3MDA6NDcwMDo6MTAwMV0AIDFkb3QxZG90MWRvdDEuY2xvdWRmbGFyZS1kbnMuY29tCi9kbnMtcXVlcnk


## cloudflare-security

Cloudflare DNS (anycast) with malware blocking - aka 1.1.1.2 / 1.0.0.2

sdns://AgMAAAAAAAAABzEuMC4wLjIAG3NlY3VyaXR5LmNsb3VkZmxhcmUtZG5zLmNvbQovZG5zLXF1ZXJ5


## cloudflare-security-ipv6

Cloudflare DNS over IPv6 (anycast) with malware blocking

sdns://AgMAAAAAAAAAFlsyNjA2OjQ3MDA6NDcwMDo6MTExMl0AG3NlY3VyaXR5LmNsb3VkZmxhcmUtZG5zLmNvbQovZG5zLXF1ZXJ5
sdns://AgMAAAAAAAAAFlsyNjA2OjQ3MDA6NDcwMDo6MTAwMl0AG3NlY3VyaXR5LmNsb3VkZmxhcmUtZG5zLmNvbQovZG5zLXF1ZXJ5


## commons-host

DoH server by the Commons Host CDN

sdns://AgUAAAAAAAAAAKA-GhoPbFPz6XpJLVcIS1uYBwWe4FerFQWHb9g_2j24OCAyhv9lpl-vMghe6hOIw3OLp-N4c8kGzOPEootMwqWJiAxjb21tb25zLmhvc3QKL2Rucy1xdWVyeQ


## comodo-02

Comodo Dome Shield (anycast) - https://cdome.comodo.com/shield/

sdns://AQUAAAAAAAAACjguMjAuMjQ3LjIg0sJUqpYcHsoXmZb1X7yAHwg2xyN5q1J-zaiGG-Dgs7AoMi5kbnNjcnlwdC1jZXJ0LnNoaWVsZC0yLmRuc2J5Y29tb2RvLmNvbQ


## comss.one

DNS server in Lithuania filtering phishing and ads.
https://www.comss.ru/page.php?id=7315

sdns://AQMAAAAAAAAADTk0LjE3Ni4yMzMuOTMgFWnIA4ZtJKvnIs9g6yZT4WIyPb-rQEB27paIxM_OkxMdMi5kbnNjcnlwdC1jZXJ0LmRucy5jb21zcy5vbmU


## containerpi

Non-logging, non-filtering, DNSSEC validating server, EDNS Client Subnet enabled.
Multiple nodes in China Mainland, Japan and Germany.
Maintained by CPI-tech-Group

sdns://AgMAAAAAAAAADDQ1Ljc3LjE4MC4xMCA59q74zeUV4xVJXPXvLw0G1pi3YdoaF4FskwSxGJjS1BNkbnMuY29udGFpbmVycGkuY29tCi9kbnMtcXVlcnk


## containerpi-ipv6

Non-logging, non-filtering, DNSSEC validating server, EDNS Client Subnet enabled.
Multiple nodes in China Mainland, Japan and Germany.
Maintained by CPI-tech-Group

sdns://AgMAAAAAAAAAKVsyMDAxOjE5ZjA6NzAwMTo1NTU0OjU0MDA6MDJmZjpmZTU3OjMwNzddIDn2rvjN5RXjFUlc9e8vDQbWmLdh2hoXgWyTBLEYmNLUE2Rucy5jb250YWluZXJwaS5jb20KL2Rucy1xdWVyeQ


## cs-ca

Canada DNSCrypt server provided by https://cryptostorm.is/

sdns://AQIAAAAAAAAADzE2Mi4yMjEuMjA3LjIyOCAxM3KtWVYywkFrhy8Jj4Ub3bllKExsvppPGQlkMNupWh4yLmRuc2NyeXB0LWNlcnQuY3J5cHRvc3Rvcm0uaXM


## cs-ca2

Secondary Canada DNSCrypt server provided by https://cryptostorm.is/

sdns://AQIAAAAAAAAADjE2Ny4xMTQuODQuMTMyIDEzcq1ZVjLCQWuHLwmPhRvduWUoTGy-mk8ZCWQw26laHjIuZG5zY3J5cHQtY2VydC5jcnlwdG9zdG9ybS5pcw


## cs-ch

Switzerland DNSCrypt server provided by https://cryptostorm.is/

sdns://AQIAAAAAAAAACzgxLjE3LjMxLjM0IDEzcq1ZVjLCQWuHLwmPhRvduWUoTGy-mk8ZCWQw26laHjIuZG5zY3J5cHQtY2VydC5jcnlwdG9zdG9ybS5pcw


## cs-de

Germany DNSCrypt server provided by https://cryptostorm.is/

sdns://AQIAAAAAAAAADDg0LjE2LjI0MC40MyAxM3KtWVYywkFrhy8Jj4Ub3bllKExsvppPGQlkMNupWh4yLmRuc2NyeXB0LWNlcnQuY3J5cHRvc3Rvcm0uaXM


## cs-fi

Finland DNSCrypt server provided by https://cryptostorm.is/

sdns://AQIAAAAAAAAADjE4NS4xMTcuMTE4LjIwIDEzcq1ZVjLCQWuHLwmPhRvduWUoTGy-mk8ZCWQw26laHjIuZG5zY3J5cHQtY2VydC5jcnlwdG9zdG9ybS5pcw


## cs-fr

France DNSCrypt server provided by https://cryptostorm.is/

sdns://AQIAAAAAAAAADTIxMi4xMjkuNDYuMzIgMTNyrVlWMsJBa4cvCY-FG925ZShMbL6aTxkJZDDbqVoeMi5kbnNjcnlwdC1jZXJ0LmNyeXB0b3N0b3JtLmlz


## cs-it

Italy DNSCrypt server provided by https://cryptostorm.is/

Warning: This server is incompatible with anonymization.

sdns://AQIAAAAAAAAADjE4NS45NC4xOTMuMjM0IDEzcq1ZVjLCQWuHLwmPhRvduWUoTGy-mk8ZCWQw26laHjIuZG5zY3J5cHQtY2VydC5jcnlwdG9zdG9ybS5pcw


## cs-lv

Latvia DNSCrypt server provided by https://cryptostorm.is/

sdns://AQIAAAAAAAAADzEwOS4yNDguMTQ5LjEzMyAxM3KtWVYywkFrhy8Jj4Ub3bllKExsvppPGQlkMNupWh4yLmRuc2NyeXB0LWNlcnQuY3J5cHRvc3Rvcm0uaXM


## cs-nl2

Secondary Netherlands DNSCrypt server provided by https://cryptostorm.is/

sdns://AQIAAAAAAAAADTE4NS4xMDcuODAuODQgMTNyrVlWMsJBa4cvCY-FG925ZShMbL6aTxkJZDDbqVoeMi5kbnNjcnlwdC1jZXJ0LmNyeXB0b3N0b3JtLmlz


## cs-ro

Romania DNSCrypt server provided by https://cryptostorm.is/

Warning: this server is incompatible with DNS anonymization.

sdns://AQIAAAAAAAAADDUuMjU0Ljk2LjE5NSAxM3KtWVYywkFrhy8Jj4Ub3bllKExsvppPGQlkMNupWh4yLmRuc2NyeXB0LWNlcnQuY3J5cHRvc3Rvcm0uaXM


## cs-swe

Sweden DNSCrypt server provided by https://cryptostorm.is/

sdns://AQIAAAAAAAAADzEyOC4xMjcuMTA0LjEwOCAxM3KtWVYywkFrhy8Jj4Ub3bllKExsvppPGQlkMNupWh4yLmRuc2NyeXB0LWNlcnQuY3J5cHRvc3Rvcm0uaXM


## cs-usca

US - CA DNSCrypt server provided by https://cryptostorm.is/

sdns://AQIAAAAAAAAADDIzLjE5LjY3LjExNiAxM3KtWVYywkFrhy8Jj4Ub3bllKExsvppPGQlkMNupWh4yLmRuc2NyeXB0LWNlcnQuY3J5cHRvc3Rvcm0uaXM


## cs-usga

US - GA DNSCrypt server provided by https://cryptostorm.is/

sdns://AQIAAAAAAAAADTY0LjQyLjE4MS4yMjcgMTNyrVlWMsJBa4cvCY-FG925ZShMbL6aTxkJZDDbqVoeMi5kbnNjcnlwdC1jZXJ0LmNyeXB0b3N0b3JtLmlz


## cs-usil

US - IL DNSCrypt server provided by https://cryptostorm.is/

Warning: this server is incompatible with DNS anonymization.

sdns://AQIAAAAAAAAADjE3My4yMzQuNTYuMTE1IDEzcq1ZVjLCQWuHLwmPhRvduWUoTGy-mk8ZCWQw26laHjIuZG5zY3J5cHQtY2VydC5jcnlwdG9zdG9ybS5pcw


## cs-usnc

US - NC DNSCrypt server provided by https://cryptostorm.is/

sdns://AQIAAAAAAAAADjE1NS4yNTQuMjkuMTEzIDEzcq1ZVjLCQWuHLwmPhRvduWUoTGy-mk8ZCWQw26laHjIuZG5zY3J5cHQtY2VydC5jcnlwdG9zdG9ybS5pcw


## cs-usor

US - OR DNSCrypt server provided by https://cryptostorm.is/

sdns://AQIAAAAAAAAADTEwNC4yNTUuMTc1LjIgMTNyrVlWMsJBa4cvCY-FG925ZShMbL6aTxkJZDDbqVoeMi5kbnNjcnlwdC1jZXJ0LmNyeXB0b3N0b3JtLmlz


## cs-ustx

US - TX DNSCrypt server provided by https://cryptostorm.is/

sdns://AQIAAAAAAAAADTIwOS41OC4rypted-dns-server
Hosted in Amsterdam (AMS1), The Netherlands.

Non-logging, non-filtering, supports DNSSEC.

sdns://AgcAAAAAAAAAKFsyMDAxOjE5ZjA6NTAwMTpjYmI6NTQwMDowM2ZmOmZlMDc6ZjcwZF2gPhoaD2xT8-l6SS1XCEtbmAcFnuBXqxUFh2_YP9o9uDggMob_ZaZfrzIIXuoTiMNzi6fjeHPJBszjxKKLTMKliYgVY2hld2JhY2NhLm1lZ2FuZXJkLm5sBC9kb2g


## meganerd-ipv6

DNSCrypt server by MegaNerd.nl (IPv6) - https://meganerd.nl/encrypted-dns-server
Hosted in Amsterdam (AMS1), The Netherlands.

Non-logging, non-filtering, supports DNSSEC.

sdns://AQcAAAAAAAAAJ1syMDAxOjE5ZjA6NTAwMTpjYmI6NTQwMDozZmY6ZmUwNzpmNzBkXSD8qtxwTl7jYLuhTuKVO9Uougk1epDw_OTQOgE4a_-rYhgyLmRuc2NyeXB0LWNlcnQubWVnYW5lcmQ


## nextdns

NextDNS is a cloud-based private DNS service that gives you full control
over what is allowed and what is blocked on the Internet.

DNSSEC, Anycast, Non-logging, NoFilters

https://www.nextdns.io/

sdns://AgcAAAAAAAAACjQ1LjkwLjI4LjCgPhoaD2xT8-l6SS1XCEtbmAcFnuBXqxUFh2_YP9o9uDggMob_ZaZfrzIIXuoTiMNzi6fjeHPJBszjxKKLTMKliYgOZG5zLm5leHRkbnMuaW8PL2Ruc2NyeXB0LXByb3h5


## nextdns-ipv6

Connects to NextDNS over IPv6.

NextDNS is a cloud-based private DNS service that gives you full control
over what is allowed and what is blocked on the Internet.

DNSSEC, Anycast, Non-logging, NoFilters

https://www.nextdns.io/

sdns://AgcAAAAAAAAADVsyYTA3OmE4YzA6Ol2gPhoaD2xT8-l6SS1XCEtbmAcFnuBXqxUFh2_YP9o9uDggMob_ZaZfrzIIXuoTiMNzi6fjeHPJBszjxKKLTMKliYgOZG5zLm5leHRkbnMuaW8PL2Ruc2NyeXB0LXByb3h5


## njalla-doh

Non-logging DoH server in Sweden operated by Njalla.

https://dns.njal.la/

sdns://AgcAAAAAAAAADDk1LjIxNS4xOS41M6A-GhoPbFPz6XpJLVcIS1uYBwWe4FerFQWHb9g_2j24OCAyhv9lpl-vMghe6hOIw3OLp-N4c8kGzOPEootMwqWJiAtkbnMubmphbC5sYQovZG5zLXF1ZXJ5


## opennic-R4SAS

DNSSEC - OpenNIC - Non-logging - Uncensored - hosted on ovh.com
Location: Gravelines, France.
Maintained by R4SAS.

sdns://AQcAAAAAAAAADTE1MS44MC4yMjIuNzkgqdYyOk8lgAkmGXUVAs4jHh922d53bIfGu7KKDv_bDk4gMi5kbnNjcnlwdC1jZXJ0Lm9wZW5uaWMuaTJwZC54eXo


## opennic-bongobow

OpenNIC • Non-logging • No DNSSEC
Location: Munich, Germany

Warning: this server is incompatible with DNS anonymization.

sdns://AQYAAAAAAAAAETUuMTg5LjE3MC4xOTY6NDY1IFQ1LFVAO4Luk8QH_cI0RJcNmlbvIr_P-eyQnM0yJDJrKDIuZG5zY3J5cHQtY2VydC5uczE2LmRlLmRucy5vcGVubmljLmdsdWU


## opennic-fische

OpenNIC • Non-logging • DNSSEC
Location: Nurnberg, Germany

sdns://AQcAAAAAAAAAEDc4LjQ3LjI0My4zOjEwNTMgN4CAbUDR-b3uJJMVzfCdL9ivVV7s8wRhifLRPWBfSmQdMi5kbnNjcnlwdC1jZXJ0Lm5zMS5maXNjaGUuaW8


## opennic-iriseden

OpenNIC • Non-logging • DNSSEC
Location: Paris, France
Maintained by iriseden.

sdns://AQcAAAAAAAAAEzYyLjIxMC4xNzcuMTg5OjEwNTMgW8vytBGk6u3kvCpl4q88XjqW-w6JJiJ7QBObcFV7gYAfMi5kbnNjcnlwdC1jZXJ0Lm5zMS5pcmlzZWRlbi5mcg


## opennic-luggs

Public DNS server in Canada operated by Luggs

sdns://AQYAAAAAAAAADTE0Mi40LjIwNC4xMTEgHBl5MxvoI8zPCJp5BpN-XDQQKlasf2Jw4EYlsu3bBOMfMi5kbnNjcnlwdC1jZXJ0Lm5zMy5jYS5sdWdncy5jbw


## opennic-luggs2

Second public DNS server in Canada operated by Luggs

sdns://AQYAAAAAAAAADDE0Mi40LjIwNS40NyC8v7fgUME9okIsALCxrJrWSMXCZLy2FwuIPXGKyG66CR8yLmRuc2NyeXB0LWNlcnQubnM0LmNhLmx1Z2dzLmNv


## opennic-rico4514

OpenNIC • Non-logging • No DNSSEC
Location: Texas, 13, MX

sdns://AQYAAAAAAAAADTE0Mi40LjIwNC4xMTEgHBl5MxvoI8zPCJp5BpN-XDQQKlasf2Jw4EYlsu3bBOMfMi5kbnNjcnlwdC1jZXJ0Lm5zMy5jYS5sdWdncy5jbw


## oszx

Secure DNS Project by PumpleX - Hosted in the UK by OVH
No Logging / Ad-Blocking
Information at https://dns.oszx.co

sdns://AQIAAAAAAAAAETUxLjM4LjgzLjE0MTo1MzUzIMwm9_oYw26P4JIVoDhJ_5kFDdNxX1ke4fEzL1V5bwEjFzIuZG5zY3J5cHQtY2VydC5vc3p4LmNv


## plan9-dns

Resolver in ew Jersey, USA. DNSCrypt protocol. Non-logging, non-filtering, DNSSEC, anonymized.
Running the official Docker image on Vultr by @jlongua1

sdns://AQcAAAAAAAAADjE3My4xOTkuMTI2LjM1IJLwH3z8-G6TDyEk6yXMmGxuss7nGfFnkHrtm4VOSc9SGTIuZG5zY3J5cHQtY2VydC5wbGFuOS1kbnM


## powerdns-doh

By PowerDNS/Open-Xchange https://powerdns.org

sdns://AgcAAAAAAAAAAKA-GhoPbFPz6XpJLVcIS1uYBwWe4FerFQWHb9g_2j24OCAyhv9lpl-vMghe6hOIw3OLp-N4c8kGzOPEootMwqWJiBBkb2gucG93ZXJkbnMub3JnAS8


## publicarray-au

DNSSEC • OpenNIC • Non-logging • Uncensored - hosted on vultr.com
Maintained by publicarray - https://dns.seby.io

sdns://AQcAAAAAAAAADDQ1Ljc2LjExMy4zMSAIVGh4i6eKXqlF6o9Fg92cgD2WcDvKQJ7v_Wq4XrQsVhsyLmRuc2NyeXB0LWNlcnQuZG5zLnNlYnkuaW8


## publicarray-au-doh

DNSSEC • OpenNIC • Non-logging • Uncensored - hosted on vultr.com
Maintained by publicarray - https://dns.seby.io

sdns://AgcAAAAAAAAADDQ1Ljc2LjExMy4zMaA-GhoPbFPz6XpJLVcIS1uYBwWe4FerFQWHb9g_2j24OCAyhv9lpl-vMghe6hOIw3OLp-N4c8kGzOPEootMwqWJiBBkb2guc2VieS5pbzo4NDQzCi9kbnMtcXVlcnk


## publicarray-au2

DNSSEC • OpenNIC • Non-logging • Uncensored - hosted on ovh.com.au
Maintained by publicarray - https://dns.seby.io

sdns://AQcAAAAAAAAAEjEzOS45OS4yMjIuNzI6ODQ0MyALBWhPDQvh2BqXksLUVtlS0e0tH-tW5XqtWfE73l7gZRsyLmRuc2NyeXB0LWNlcnQuZG5zLnNlYnkuaW8


## publicarray-au2-doh

DNSSEC • OpenNIC • Non-logging • Uncensored - hosted on ovh.com.au
Maintained by publicarray - https://dns.seby.io

sdns://AgcAAAAAAAAADTEzOS45OS4yMjIuNzKgPhoaD2xT8-l6SS1XCEtbmAcFnuBXqxUFh2_YP9o9uDggMob_ZaZfrzIIXuoTiMNzi6fjeHPJBszjxKKLTMKliYgRZG9oLTIuc2VieS5pbzo0NDMKL2Rucy1xdWVyeQ


## pwoss.org-dnscrypt

No filter | No logs | DNSSEC | Nuremberg, Germany (netcup) | Maintained by https://pwoss.org/ (Dan)

sdns://AQcAAAAAAAAAEzQ1LjE0Mi4xNzYuMTcwOjQ0MzQgZF8FTkuFVFw6YP5x8ydebnTb8ONP7Ti6P0K1REyhUHgZMi5kbnNjcnlwdC1jZXJ0LnB3b3NzLm9yZw


## quad9-dnscrypt-ip4-filter-pri

Quad9 (anycast) dnssec/no-log/filter 9.9.9.9 / 149.112.112.9

sdns://AQMAAAAAAAAADDkuOS45Ljk6ODQ0MyBnyEe4yHWM0SAkVUO-dWdG3zTfHYTAC4xHA2jfgh2GPhkyLmRuc2NyeXB0LWNlcnQucXVhZDkubmV0
sdns://AQMAAAAAAAAAEjE0OS4xMTIuMTEyLjk6ODQ0MyBnyEe4yHWM0SAkVUO-dWdG3zTfHYTAC4xHA2jfgh2GPhkyLmRuc2NyeXB0LWNlcnQucXVhZDkubmV0


## quad9-dnscrypt-ip4-nofilter-pri

Quad9 (anycast) no-dnssec/no-log/no-filter 9.9.9.10 / 149.112.112.10

sdns://AQYAAAAAAAAADTkuOS45LjEwOjg0NDMgZ8hHuMh1jNEgJFVDvnVnRt803x2EwAuMRwNo34Idhj4ZMi5kbnNjcnlwdC1jZXJ0LnF1YWQ5Lm5ldA
sdns://AQYAAAAAAAAAEzE0OS4xMTIuMTEyLjEwOjg0NDMgZ8hHuMh1jNEgJFVDvnVnRt803x2EwAuMRwNo34Idhj4ZMi5kbnNjcnlwdC1jZXJ0LnF1YWQ5Lm5ldA


## quad9-dnscrypt-ip6-filter-pri

Quad9 (anycast) dnssec/no-log/filter 2620:fe::fe:9 / 2620:fe::9

Warning: this server is incompatible with DNS anonymization.

sdns://AQMAAAAAAAAAFFsyNjIwOmZlOjpmZTo5XTo4NDQzIGfIR7jIdYzRICRVQ751Z0bfNN8dhMALjEcDaN-CHYY-GTIuZG5zY3J5cHQtY2VydC5xdWFkOS5uZXQ
sdns://AQMAAAAAAAAAEVsyNjIwOmZlOjo5XTo4NDQzIGfIR7jIdYzRICRVQ751Z0bfNN8dhMALjEcDaN-CHYY-GTIuZG5zY3J5cHQtY2VydC5xdWFkOS5uZXQ


## quad9-dnscrypt-ip6-nofilter-pri

Quad9 (anycast) no-dnssec/no-log/no-filter 2620:fe::10 / 2620:fe::fe:10

Warning: this server is incompatible with DNS anonymization.

sdns://AQYAAAAAAAAAElsyNjIwOmZlOjoxMF06ODQ0MyBnyEe4yHWM0SAkVUO-dWdG3zTfHYTAC4xHA2jfgh2GPhkyLmRuc2NyeXB0LWNlcnQucXVhZDkubmV0
sdns://AQYAAAAAAAAAFVsyNjIwOmZlOjpmZToxMF06ODQ0MyBnyEe4yHWM0SAkVUO-dWdG3zTfHYTAC4xHA2jfgh2GPhkyLmRuc2NyeXB0LWNlcnQucXVhZDkubmV0


## quad9-doh-ip4-filter-pri

Quad9 (anycast) dnssec/no-log/filter 9.9.9.9 / 149.112.112.9

sdns://AgMAAAAAAAAABzkuOS45LjkAEmRuczkucXVhZDkubmV0OjQ0MwovZG5zLXF1ZXJ5
sdns://AgMAAAAAAAAADTE0O

# public-resolvers

This is an extensive list of public DNS resolvers supporting the
DNSCrypt and DNS-over-HTTP2 protocols.

This list is maintained by Frank Denis <j @ dnscrypt [.] info>

Warning: it includes servers that may censor content, servers that don't
verify DNSSEC records, and servers that will collect and monetize your
queries.

Adjust the `require_*` options in dnscrypt-proxy to filter that list
according to your needs.

To use that list, add this to the `[sources]` section of your
`dnscrypt-proxy.toml` configuration file:

    [sources.'public-resolvers']
        urls = ['https://raw.githubusercontent.com/DNSCrypt/dnscrypt-resolvers/master/v3/public-resolvers.md', 'https://download.dnscrypt.info/resolvers-list/v3/public-resolvers.md']
	    minisign_key = 'RWQf6LRCGA9i53mlYecO4IzT51TGPpvWucNSCh1CBM0QTaLn73Y7GFO3'
	        cache_file = 'public-resolvers.md'

--


## a-and-a

Non-logging DoH server in the UK operated by Andrews & Arnold Ltd, a
company providing Internet connectivity and VoIP in the UK.

https://www.aa.net.uk/legal/dohdot-disclaimer/

sdns://AgcAAAAAAAAADTIxNy4xNjkuMjAuMjOgPhoaD2xT8-l6SS1XCEtbmAcFnuBXqxUFh2_YP9o9uDggMob_ZaZfrzIIXuoTiMNzi6fjeHPJBszjxKKLTMKliYgNZG5zLmFhLm5ldC51awovZG5zLXF1ZXJ5


## aaflalo-me-gcp

Same as aaflalo-me-nyc. Use aaflalo-me-nyc.

Kept for backward compatibility with people using this server.

https://www.aaflalo.me/2019/01/dns-over-https-server-aaflalo-me/

sdns://AgMAAAAAAAAADjE2OC4yMzUuODEuMTY3oD4aGg9sU_PpekktVwhLW5gHBZ7gV6sVBYdv2D_aPbg4IDKG_2WmX68yCF7qE4jDc4un43hzyQbM48Sii0zCpYmIEmRucy1ueWMuYWFmbGFsby5tZQovZG5zLXF1ZXJ5


## aaflalo-me-nyc

DNS-over-HTTPS server running dns-over-https with PiHole for Adblocking in NYC, USA.

Non-logging, AD-filtering, supports DNSSEC.
Hosted in New York on a RamNode Cloud Instance.

https://www.aaflalo.me/2019/01/dns-over-https-server-aaflalo-me/

sdns://AgMAAAAAAAAADjE2OC4yMzUuODEuMTY3oD4aGg9sU_PpekktVwhLW5gHBZ7gV6sVBYdv2D_aPbg4IDKG_2WmX68yCF7qE4jDc4un43hzyQbM48Sii0zCpYmIEmRucy1ueWMuYWFmbGFsby5tZQovZG5zLXF1ZXJ5


## acsacsar-ams-ipv4

Public non-censoring, non-logging, DNSSEC-capable, DNSCrypt-enabled DNS resolver hosted on Scaleway by @acsacsar (twitter)

sdns://AQcAAAAAAAAADTUxLjE1OC4xNjYuOTcgAyfzz5J-mV9G-yOB4Hwcdk7yX12EQs5Iva7kV3oGtlEgMi5kbnNjcnlwdC1jZXJ0LmFjc2Fjc2FyLWFtcy5jb20


## acsacsar-ams-ipv6

Public non-censoring, non-logging, DNSSEC-capable, DNSCrypt-enabled DNS resolver hosted on Scaleway by @acsacsar (twitter)

sdns://AQcAAAAAAAAAFlsyMDAxOmJjODoxODI0OjczODo6MV0gAyfzz5J-mV9G-yOB4Hwcdk7yX12EQs5Iva7kV3oGtlEgMi5kbnNjcnlwdC1jZXJ0LmFjc2Fjc2FyLWFtcy5jb20


## adfree.usableprivacy.net

Public non-logging DoH server with advertising and tracker filtering.

Hosted in Austria/Europe, details see: [docs.usableprivacy.com](https://docs.usableprivacy.com)

sdns://AgMAAAAAAAAADzE0OS4xNTQuMTUzLjE1M6A-GhoPbFPz6XpJLVcIS1uYBwWe4FerFQWHb9g_2j24OCAyhv9lpl-vMghe6hOIw3OLp-N4c8kGzOPEootMwqWJiBhhZGZyZWUudXNhYmxlcHJpdmFjeS5uZXQKL2Rucy1xdWVyeQ


## adguard-dns

Remove ads and protect your computer from malware

Warning: This server is incompatible with anonymization.

sdns://AQIAAAAAAAAAFDE3Ni4xMDMuMTMwLjEzMDo1NDQzINErR_JS3PLCu_iZEIbq95zkSV2LFsigxDIuUso_OQhzIjIuZG5zY3J5cHQuZGVmYXVsdC5uczEuYWRndWFyZC5jb20


## adguard-dns-doh

Remove ads and protect your computer from malware (over DoH)

sdns://AgMAAAAAAAAADzE3Ni4xMDMuMTMwLjEzMCD5_zfwLmMstzhwJcB-V5CKPTcbfJXYzdA5DeIx7ZQ6Eg9kbnMuYWRndWFyZC5jb20KL2Rucy1xdWVyeQ


## adguard-dns-family

Adguard DNS with safesearch and adult content blocking

Warning: This server is incompatible with anonymization.

sdns://AQIAAAAAAAAAFDE3Ni4xMDMuMTMwLjEzMjo1NDQzILgxXdexS27jIKRw3C7Wsao5jMnlhvhdRUXWuMm1AFq6ITIuZG5zY3J5cHQuZmFtaWx5Lm5zMS5hZGd1YXJkLmNvbQ


## adguard-dns-family-doh

Adguard DNS with safesearch and adult content blocking (over DoH)

sdns://AgMAAAAAAAAADzE3Ni4xMDMuMTMwLjEzMiD5_zfwLmMstzhwJcB-V5CKPTcbfJXYzdA5DeIx7ZQ6EhZkbnMtZmFtaWx5LmFkZ3VhcmQuY29tCi9kbnMtcXVlcnk


## adguard-dns-family-ipv6

Adguard DNS with safesearch and adult content blocking

Warning: This server is incompatible with anonymization.

sdns://AQMAAAAAAAAAGlsyYTAwOjVhNjA6OmJhZDI6MGZmXTo1NDQzIIwhF6nrwVfW-2QFbwrbwRxdg2c0c8RuJY2bL1fU7jUfITIuZG5zY3J5cHQuZmFtaWx5Lm5zMi5hZGd1YXJkLmNvbQ


## adguard-dns-ipv6

Remove ads and protect your computer from malware

Warning: This server is incompatible with anonymization.

sdns://AQMAAAAAAAAAGVsyYTAwOjVhNjA6OmFkMjowZmZdOjU0NDMggdAC02pMpQxHO3R5ZQ_hLgKzIcthOFYqII5APf3FXpQiMi5kbnNjcnlwdC5kZWZhdWx0Lm5zMi5hZGd1YXJkLmNvbQ


## adguard-dns-unfiltered

AdGuard public DNS servers without filters

Warning: This server is incompatible with anonymization.

sdns://AQcAAAAAAAAAFDE3Ni4xMDMuMTMwLjEzNjo1NDQzILXoRNa4Oj4-EmjraB--pw3jxfpo29aIFB2_LsBmstr6JTIuZG5zY3J5cHQudW5maWx0ZXJlZC5uczEuYWRndWFyZC5jb20


## alidns-doh

A public DNS resolver that supports DoH/DoT in mainland China, provided by Alibaba-Cloud.

Warning: GFW filtering rules are applied by that resolver.

Homepage: https://alidns.com/

sdns://AgAAAAAAAAAACTIyMy41LjUuNSCoF6cUD2dwqtorNi96I2e3nkHPSJH1ka3xbdOglmOVkQ5kbnMuYWxpZG5zLmNvbQovZG5zLXF1ZXJ5


## ams-dnscrypt-nl

Resolver in Amsterdam. Dnscrypt protocol. Non-logging, non-filtering, DNSSEC.

sdns://AQcAAAAAAAAAEjUxLjE1LjEyNC4yMDg6NDM0MyC8E4j1dj497HXxyQ_JFb-2iurf6xxF9phRgGOcYOfxYh8yLmRuc2NyeXB0LWNlcnQuYW1zLWRuc2NyeXB0LW5s


## ams-dnscrypt-nl-ipv6

Resolver in Amsterdam. Dnscrypt protocol. Non-logging, non-filtering, DNSSEC.

sdns://AQcAAAAAAAAAHFsyMDAxOmJjODoxODMwOjFlMTg6OjFdOjQzNDMgvBOI9XY-Pex18ckPyRW_torq3-scRfaYUYBjnGDn8WIfMi5kbnNjcnlwdC1jZXJ0LmFtcy1kbnNjcnlwdC1ubA


## ams-doh-nl

Resolver in Amsterdam. DoH protocol. Non-logging, non-filtering, DNSSEC.

sdns://AgcAAAAAAAAADTUxLjE1LjEyNC4yMDigPhoaD2xT8-l6SS1XCEtbmAcFnuBXqxUFh2_YP9o9uDggMob_ZaZfrzIIXuoTiMNzi6fjeHPJBszjxKKLTMKliYgSZG5zbmwuYWxla2JlcmcubmV0Ci9kbnMtcXVlcnk


## ams-doh-nl-ipv6

Resolver in Amsterdam. DoH protocol. Non-logging, non-filtering, DNSSEC.

sdns://AgcAAAAAAAAAF1syMDAxOmJjODoxODMwOjFlMTg6OjFdoD4aGg9sU_PpekktVwhLW5gHBZ7gV6sVBYdv2D_aPbg4IDKG_2WmX68yCF7qE4jDc4un43hzyQbM48Sii0zCpYmIEmRuc25sLmFsZWtiZXJnLm5ldAovZG5zLXF1ZXJ5


## arapurayil-dnscrypt

Hosted in Mumbai, India (https://www.dns.arapurayil.com)
Non-logging | Filtering | DNSSEC | QNAME Minimization | No EDNS Client-Subnet
Blocks ads, trackers, resource-abusers, malware, and phishing.

sdns://AQMAAAAAAAAAEDMuNy4xNTYuMTI4Ojg0NDMgDXD9OSDJDwe2q9bi836PURTP14NLYS03RbDq6j891ZciMi5kbnNjcnlwdC1jZXJ0LmRucy5hcmFwdXJheWlsLmNvbQ


## arapurayil-doh

Hosted in Mumbai, India (https://www.dns.arapurayil.com)
Non-logging | Filtering | DNSSEC | QNAME Minimization | No EDNS Client-Subnet
Blocks ads, trackers, resource-abusers, malware, and phishing.

sdns://AgMAAAAAAAAAAKA-GhoPbFPz6XpJLVcIS1uYBwWe4FerFQWHb9g_2j24OCAyhv9lpl-vMghe6hOIw3OLp-N4c8kGzOPEootMwqWJiBJkbnMuYXJhcHVyYXlpbC5jb20KL2Rucy1xdWVyeQ


## arvind-io

Public resolver by EnKrypt (https://arvind.io).
Hosted in Bangalore, India.

Non-logging, non-filtering, supports DNSSEC.

sdns://AQcAAAAAAAAAFDIwNi4xODkuMTQyLjE3OTo1MzUzII5GJ8c4g6hRAwghulrn5dBB9KrvlbeCkBbLZR2HwyjJGTIuZG5zY3J5cHQtY2VydC5hcnZpbmQuaW8


## att

AT&T test DoH server.

sdns://AgQAAAAAAAAAAKBLTrSwdCmLgotcADCVoQtFI_uVHAyINIsJxT5bq6QIoyD2Hldod9qWUClMzLX5bHX8txvaG7xGRjZ8Tr7aidcxjxBkb2h0cmlhbC5hdHQubmV0Ci9kbnMtcXVlcnk


## bcn-dnscrypt

Resolver in Barcelona, Spain. DNSCrypt protocol. Non-logging, non-filtering, DNSSEC.

sdns://AQcAAAAAAAAAEzE4NS4yNTMuMTU0LjY2OjQzNDMg_IlDWhFp1tL1VycXVO3QTEiQIKG_1OwG4tNTAD-nLj0cMi5kbnNjcnlwdC1jZXJ0LmJjbi1kbnNjcnlwdA


## bcn-doh

Resolver in Barcelona, Spain. DoH protocol. Non-logging, non-filtering, DNSSEC.

sdns://AgcAAAAAAAAADjE4NS4yNTMuMTU0LjY2oD4aGg9sU_PpekktVwhLW5gHBZ7gV6sVBYdv2D_aPbg4IDKG_2WmX68yCF7qE4jDc4un43hzyQbM48Sii0zCpYmIEmRuc2VzLmFsZWtiZXJnLm5ldAovZG5zLXF1ZXJ5


## bortzmeyer

Non-logging DoH server in France operated by StÃ©phane Bortzmeyer.

https://www.bortzmeyer.org/doh-bortzmeyer-fr-policy.html

sdns://AgcAAAAAAAAADDE5My43MC44NS4xMaA-GhoPbFPz6XpJLVcIS1uYBwWe4FerFQWHb9g_2j24OCAyhv9lpl-vMghe6hOIw3OLp-N4c8kGzOPEootMwqWJiBFkb2guYm9ydHptZXllci5mcgEv


## bortzmeyer-ipv6

Non-logging DoH server in France operated by StÃ©phane Bortzmeyer (IPv6 only).

https://www.bortzmeyer.org/doh-bortzmeyer-fr-policy.html

sdns://AgcAAAAAAAAAGVsyMDAxOjQxZDA6MzAyOjIyMDA6OjE4MF2gPhoaD2xT8-l6SS1XCEtbmAcFnuBXqxUFh2_YP9o9uDggMob_ZaZfrzIIXuoTiMNzi6fjeHPJBszjxKKLTMKliYgRZG9oLmJvcnR6bWV5ZXIuZnIBLw


## brahma-world

DNS-over-HTTPS / DNS over TLS server with PiHole. Filters ads, trackers and malware. DNSSEC ready, QNAME Minimization, No EDNS Client-Subnet.

Hosted in Frankfurt, Germany. (https://dns.brahma.world)

sdns://AgMAAAAAAAAADTk0LjIzNy44MC4yMTGgPhoaD2xT8-l6SS1XCEtbmAcFnuBXqxUFh2_YP9o9uDggMob_ZaZfrzIIXuoTiMNzi6fjeHPJBszjxKKLTMKliYgQZG5zLmJyYWhtYS53b3JsZAovZG5zLXF1ZXJ5


## brahma-world-ipv6

DNS-over-HTTPS / DNS over TLS server with PiHole. Filters ads, trackers and malware. DNSSEC ready, QNAME Minimization, No EDNS Client-Subnet.

Hosted in Frankfurt, Germany. (https://dns.brahma.world)

sdns://AgMAAAAAAAAAKFsyYTA0OjM1NDI6MTAwMDo5MTA6MzA1Yzo3NGZmOmZlMjk6N2MyNl2gPhoaD2xT8-l6SS1XCEtbmAcFnuBXqxUFh2_YP9o9uDggMob_ZaZfrzIIXuoTiMNzi6fjeHPJBszjxKKLTMKliYgQZG5zLmJyYWhtYS53b3JsZAovZG5zLXF1ZXJ5


## captnemo-in

Server running out of a Digital Ocean droplet in BLR1 region.
Maintained by Abhay Rana aka Nemo.

If you are within India, this might be a nice DNS server to use.

sdns://AQQAAAAAAAAAEjEzOS41OS40OC4yMjI6NDQzNCAFOt_yxaMpFtga2IpneSwwK6rV0oAyleham9IvhoceEBsyLmRuc2NyeXB0LWNlcnQuY2FwdG5lbW8uaW4


## circl-doh

DoH server operated by CIRCL, Computer Incident Response Center Luxembourg.

Hosted in Bettembourg, Luxembourg.

sdns://AgYAAAAAAAAADTE4NS4xOTQuOTQuNzEADGRucy5jaXJjbC5sdQovZG5zLXF1ZXJ5


## circl-doh-ipv6

DoH server operated by CIRCL, Computer Incident Response Center Luxembourg.

Hosted in Bettembourg, Luxembourg.

sdns://AgYAAAAAAAAAElsyYTAwOjU5ODA6OTQ6OjcxXQAMZG5zLmNpcmNsLmx1Ci9kbnMtcXVlcnk


## cisco

Remove your DNS blind spot (DNSCrypt protocol)

Warning: This server is incompatible with anonymization.

Warning: modifies your queries to include a copy of your network
address when forwarding them to a selection of companies and organizations.

sdns://AQEAAAAAAAAADjIwOC42Ny4yMjAuMjIwILc1EUAgbyJdPivYItf9aR6hwzzI1maNDL4Ev6vKQ_t5GzIuZG5zY3J5cHQtY2VydC5vcGVuZG5zLmNvbQ


## cisco-doh

Remove your DNS blind spot (DoH protocol)

Warning: modifies your queries to include a copy of your network
address when forwarding them to a selection of companies and organizations.

sdns://AgAAAAAAAAAADDE0Ni4xMTIuNDEuMiBoU4_HgY6B0kIqkGBjb6UoKkP2Dc4bumDC1_Orq2YAlw9kb2gub3BlbmRucy5jb20KL2Rucy1xdWVyeQ


## cisco-familyshield

Block websites not suitable for children (DNSCrypt protocol)

Warning: modifies your queries to include a copy of your network
address when forwarding them to a selection of companies and organizations.

Currently incompatible with DNS anonymization.

sdns://AQEAAAAAAAAADjIwOC42Ny4yMjAuMTIzILc1EUAgbyJdPivYItf9aR6hwzzI1maNDL4Ev6vKQ_t5GzIuZG5zY3J5cHQtY2VydC5vcGVuZG5zLmNvbQ


## cisco-familyshield-ipv6

Block websites not suitable for children (IPv6)

Warning: This server is incompatible with anonymization.

Warning: modifies your queries to include a copy of your network
address when forwarding them to a selection of companies and organizations.

sdns://AQEAAAAAAAAAEVsyNjIwOjExOTozNTo6MzVdILc1EUAgbyJdPivYItf9aR6hwzzI1maNDL4Ev6vKQ_t5GzIuZG5zY3J5cHQtY2VydC5vcGVuZG5zLmNvbQ


## cisco-ipv6

Cisco OpenDNS over IPv6 (DNSCrypt protocol)

Warning: This server is incompatible with anonymization.

Warning: modifies your queries to include a copy of your network
address when forwarding them to a selection of companies and organizations.

sdns://AQEAAAAAAAAAD1syNjIwOjA6Y2NjOjoyXSC3NRFAIG8iXT4r2CLX_WkeocM8yNZmjQy-BL-rykP7eRsyLmRuc2NyeXB0LWNlcnQub3BlbmRucy5jb20


## cisco-ipv6-doh

Cisco OpenDNS over IPv6 (DoH protocol)

Warning: modifies your queries to include a copy of your network
address when forwarding them to a selection of companies and organizations.

sdns://AgAAAAAAAAAAEFsyNjIwOjExOTpmYzo6Ml0gaFOPx4GOgdJCKpBgY2-lKCpD9g3OG7pgwtfzq6tmAJcPZG9oLm9wZW5kbnMuY29tCi9kbnMtcXVlcnk


## cleanbrowsing-adult

Blocks access to all adult, pornographic and explicit sites. It does
not block proxy or VPNs, nor mixed-content sites. Sites like Reddit
are allowed. Google and Bing are set to the Safe Mode.

Warning: This server is incompatible with anonymization.

By https://cleanbrowsing.org/

sdns://AQMAAAAAAAAAEzE4NS4yMjguMTY4LjEwOjg0NDMgvKwy-tVDaRcfCDLWB1AnwyCM7vDo6Z-UGNx3YGXUjykRY2xlYW5icm93c2luZy5vcmc


## cleanbrowsing-adult-ipv6

Blocks access to all adult, pornographic and explicit sites. It does
not block proxy or VPNs, nor mixed-content sites. Sites like Reddit
are allowed. Google and Bing are set to the Safe Mode.

Warning: This server is incompatible with anonymization.

By https://cleanbrowsing.org/

sdns://AQMAAAAAAAAAFVsyYTBkOjJhMDA6MTo6MV06ODQ0MyC8rDL61UNpFx8IMtYHUCfDIIzu8Ojpn5QY3HdgZdSPKRFjbGVhbmJyb3dzaW5nLm9yZw


## cleanbrowsing-family

Blocks access to all adult, pornographic and explicit sites. It also
blocks proxy and VPN domains that are used to bypass the filters.
Mixed content sites (like Reddit) are also blocked. Google, Bing and
Youtube are set to the Safe Mode.

Warning: This server is incompatible with anonymization.

By https://cleanbrowsing.org/

sdns://AQMAAAAAAAAAFDE4NS4yMjguMTY4LjE2ODo4NDQzILysMvrVQ2kXHwgy1gdQJ8MgjO7w6OmflBjcd2Bl1I8pEWNsZWFuYnJvd3Npbmcub3Jn


## cleanbrowsing-family-ipv6

Blocks access to all adult, pornographic and explicit sites. It also
blocks proxy and VPN domains that are used to bypass the filters.
Mixed content sites (like Reddit) are also blocked. Google, Bing and
Youtube are set to the Safe Mode.

Warning: This server is incompatible with anonymization.

By https://cleanbrowsing.org/

sdns://AQMAAAAAAAAAFFsyYTBkOjJhMDA6MTo6XTo4NDQzILysMvrVQ2kXHwgy1gdQJ8MgjO7w6OmflBjcd2Bl1I8pEWNsZWFuYnJvd3Npbmcub3Jn


## cleanbrowsing-security

Block access to phishing, malware and malicious domains. It does not block adult content.
By https://cleanbrowsing.org/

Warning: This server is incompatible with anonymization.

sdns://AQMAAAAAAAAAEjE4NS4yMjguMTY4Ljk6ODQ0MyC8rDL61UNpFx8IMtYHUCfDIIzu8Ojpn5QY3HdgZdSPKRFjbGVhbmJyb3dzaW5nLm9yZw


## cloudflare

Cloudflare DNS (anycast) - aka 1.1.1.1 / 1.0.0.1

sdns://AgcAAAAAAAAABzEuMC4wLjEAEmRucy5jbG91ZGZsYXJlLmNvbQovZG5zLXF1ZXJ5


## cloudflare-family

Cloudflare DNS (anycast) with malware protection and parental control - aka 1.1.1.3 / 1.0.0.3

sdns://AgMAAAAAAAAABzEuMC4wLjMAGWZhbWlseS5jbG91ZGZsYXJlLWRucy5jb20KL2Rucy1xdWVyeQ


## cloudflare-family-ipv6

Cloudflare DNS over IPv6 (anycast) with malware protection and parental control

sdns://AgMAAAAAAAAAFlsyNjA2OjQ3MDA6NDcwMDo6MTExM10AGWZhbWlseS5jbG91ZGZsYXJlLWRucy5jb20KL2Rucy1xdWVyeQ
sdns://AgMAAAAAAAAAFlsyNjA2OjQ3MDA6NDcwMDo6MTAwM10AGWZhbWlseS5jbG91ZGZsYXJlLWRucy5jb20KL2Rucy1xdWVyeQ


## cloudflare-ipv6

Cloudflare DNS over IPv6 (anycast)

sdns://AgcAAAAAAAAAFlsyNjA2OjQ3MDA6NDcwMDo6MTExMV0AIDFkb3QxZG90MWRvdDEuY2xvdWRmbGFyZS1kbnMuY29tCi9kbnMtcXVlcnk
sdns://AgcAAAAAAAAAFlsyNjA2OjQ3MDA6NDcwMDo6MTAwMV0AIDFkb3QxZG90MWRvdDEuY2xvdWRmbGFyZS1kbnMuY29tCi9kbnMtcXVlcnk


## cloudflare-security

Cloudflare DNS (anycast) with malware blocking - aka 1.1.1.2 / 1.0.0.2

sdns://AgMAAAAAAAAABzEuMC4wLjIAG3NlY3VyaXR5LmNsb3VkZmxhcmUtZG5zLmNvbQovZG5zLXF1ZXJ5


## cloudflare-security-ipv6

Cloudflare DNS over IPv6 (anycast) with malware blocking

sdns://AgMAAAAAAAAAFlsyNjA2OjQ3MDA6NDcwMDo6MTExMl0AG3NlY3VyaXR5LmNsb3VkZmxhcmUtZG5zLmNvbQovZG5zLXF1ZXJ5
sdns://AgMAAAAAAAAAFlsyNjA2OjQ3MDA6NDcwMDo6MTAwMl0AG3NlY3VyaXR5LmNsb3VkZmxhcmUtZG5zLmNvbQovZG5zLXF1ZXJ5


## commons-host

DoH server by the Commons Host CDN

sdns://AgUAAAAAAAAAAKA-GhoPbFPz6XpJLVcIS1uYBwWe4FerFQWHb9g_2j24OCAyhv9lpl-vMghe6hOIw3OLp-N4c8kGzOPEootMwqWJiAxjb21tb25zLmhvc3QKL2Rucy1xdWVyeQ


## comodo-02

Comodo Dome Shield (anycast) - https://cdome.comodo.com/shield/

sdns://AQUAAAAAAAAACjguMjAuMjQ3LjIg0sJUqpYcHsoXmZb1X7yAHwg2xyN5q1J-zaiGG-Dgs7AoMi5kbnNjcnlwdC1jZXJ0LnNoaWVsZC0yLmRuc2J5Y29tb2RvLmNvbQ


## comss.one

DNS server in Lithuania filtering phishing and ads.
https://www.comss.ru/page.php?id=7315

sdns://AQMAAAAAAAAADTk0LjE3Ni4yMzMuOTMgFWnIA4ZtJKvnIs9g6yZT4WIyPb-rQEB27paIxM_OkxMdMi5kbnNjcnlwdC1jZXJ0LmRucy5jb21zcy5vbmU


## containerpi

Non-logging, non-filtering, DNSSEC validating server, EDNS Client Subnet enabled.
Multiple nodes in China Mainland, Japan and Germany.
Maintained by CPI-tech-Group

sdns://AgMAAAAAAAAADDQ1Ljc3LjE4MC4xMCA59q74zeUV4xVJXPXvLw0G1pi3YdoaF4FskwSxGJjS1BNkbnMuY29udGFpbmVycGkuY29tCi9kbnMtcXVlcnk


## containerpi-ipv6

Non-logging, non-filtering, DNSSEC validating server, EDNS Client Subnet enabled.
Multiple nodes in China Mainland, Japan and Germany.
Maintained by CPI-tech-Group

sdns://AgMAAAAAAAAAKVsyMDAxOjE5ZjA6NzAwMTo1NTU0OjU0MDA6MDJmZjpmZTU3OjMwNzddIDn2rvjN5RXjFUlc9e8vDQbWmLdh2hoXgWyTBLEYmNLUE2Rucy5jb250YWluZXJwaS5jb20KL2Rucy1xdWVyeQ


## cs-ca

Canada DNSCrypt server provided by https://cryptostorm.is/

sdns://AQIAAAAAAAAADzE2Mi4yMjEuMjA3LjIyOCAxM3KtWVYywkFrhy8Jj4Ub3bllKExsvppPGQlkMNupWh4yLmRuc2NyeXB0LWNlcnQuY3J5cHRvc3Rvcm0uaXM


## cs-ca2

Secondary Canada DNSCrypt server provided by https://cryptostorm.is/

sdns://AQIAAAAAAAAADjE2Ny4xMTQuODQuMTMyIDEzcq1ZVjLCQWuHLwmPhRvduWUoTGy-mk8ZCWQw26laHjIuZG5zY3J5cHQtY2VydC5jcnlwdG9zdG9ybS5pcw


## cs-ch

Switzerland DNSCrypt server provided by https://cryptostorm.is/

sdns://AQIAAAAAAAAACzgxLjE3LjMxLjM0IDEzcq1ZVjLCQWuHLwmPhRvduWUoTGy-mk8ZCWQw26laHjIuZG5zY3J5cHQtY2VydC5jcnlwdG9zdG9ybS5pcw


## cs-de

Germany DNSCrypt server provided by https://cryptostorm.is/

sdns://AQIAAAAAAAAADDg0LjE2LjI0MC40MyAxM3KtWVYywkFrhy8Jj4Ub3bllKExsvppPGQlkMNupWh4yLmRuc2NyeXB0LWNlcnQuY3J5cHRvc3Rvcm0uaXM


## cs-fi

Finland DNSCrypt server provided by https://cryptostorm.is/

sdns://AQIAAAAAAAAADjE4NS4xMTcuMTE4LjIwIDEzcq1ZVjLCQWuHLwmPhRvduWUoTGy-mk8ZCWQw26laHjIuZG5zY3J5cHQtY2VydC5jcnlwdG9zdG9ybS5pcw


## cs-fr

France DNSCrypt server provided by https://cryptostorm.is/

sdns://AQIAAAAAAAAADTIxMi4xMjkuNDYuMzIgMTNyrVlWMsJBa4cvCY-FG925ZShMbL6aTxkJZDDbqVoeMi5kbnNjcnlwdC1jZXJ0LmNyeXB0b3N0b3JtLmlz


## cs-it

Italy DNSCrypt server provided by https://cryptostorm.is/

Warning: This server is incompatible with anonymization.

sdns://AQIAAAAAAAAADjE4NS45NC4xOTMuMjM0IDEzcq1ZVjLCQWuHLwmPhRvduWUoTGy-mk8ZCWQw26laHjIuZG5zY3J5cHQtY2VydC5jcnlwdG9zdG9ybS5pcw


## cs-lv

Latvia DNSCrypt server provided by https://cryptostorm.is/

sdns://AQIAAAAAAAAADzEwOS4yNDguMTQ5LjEzMyAxM3KtWVYywkFrhy8Jj4Ub3bllKExsvppPGQlkMNupWh4yLmRuc2NyeXB0LWNlcnQuY3J5cHRvc3Rvcm0uaXM


## cs-nl2

Secondary Netherlands DNSCrypt server provided by https://cryptostorm.is/

sdns://AQIAAAAAAAAADTE4NS4xMDcuODAuODQgMTNyrVlWMsJBa4cvCY-FG925ZShMbL6aTxkJZDDbqVoeMi5kbnNjcnlwdC1jZXJ0LmNyeXB0b3N0b3JtLmlz


## cs-ro

Romania DNSCrypt server provided by https://cryptostorm.is/

Warning: this server is incompatible with DNS anonymization.

sdns://AQIAAAAAAAAADDUuMjU0Ljk2LjE5NSAxM3KtWVYywkFrhy8Jj4Ub3bllKExsvppPGQlkMNupWh4yLmRuc2NyeXB0LWNlcnQuY3J5cHRvc3Rvcm0uaXM


## cs-swe

Sweden DNSCrypt server provided by https://cryptostorm.is/

sdns://AQIAAAAAAAAADzEyOC4xMjcuMTA0LjEwOCAxM3KtWVYywkFrhy8Jj4Ub3bllKExsvppPGQlkMNupWh4yLmRuc2NyeXB0LWNlcnQuY3J5cHRvc3Rvcm0uaXM


## cs-usca

US - CA DNSCrypt server provided by https://cryptostorm.is/

sdns://AQIAAAAAAAAADDIzLjE5LjY3LjExNiAxM3KtWVYywkFrhy8Jj4Ub3bllKExsvppPGQlkMNupWh4yLmRuc2NyeXB0LWNlcnQuY3J5cHRvc3Rvcm0uaXM


## cs-usga

US - GA DNSCrypt server provided by https://cryptostorm.is/

sdns://AQIAAAAAAAAADTY0LjQyLjE4MS4yMjcgMTNyrVlWMsJBa4cvCY-FG925ZShMbL6aTxkJZDDbqVoeMi5kbnNjcnlwdC1jZXJ0LmNyeXB0b3N0b3JtLmlz


## cs-usil

US - IL DNSCrypt server provided by https://cryptostorm.is/

Warning: this server is incompatible with DNS anonymization.

sdns://AQIAAAAAAAAADjE3My4yMzQuNTYuMTE1IDEzcq1ZVjLCQWuHLwmPhRvduWUoTGy-mk8ZCWQw26laHjIuZG5zY3J5cHQtY2VydC5jcnlwdG9zdG9ybS5pcw


## cs-usnc

US - NC DNSCrypt server provided by https://cryptostorm.is/

sdns://AQIAAAAAAAAADjE1NS4yNTQuMjkuMTEzIDEzcq1ZVjLCQWuHLwmPhRvduWUoTGy-mk8ZCWQw26laHjIuZG5zY3J5cHQtY2VydC5jcnlwdG9zdG9ybS5pcw


## cs-usor

US - OR DNSCrypt server provided by https://cryptostorm.is/

sdns://AQIAAAAAAAAADTEwNC4yNTUuMTc1LjIgMTNyrVlWMsJBa4cvCY-FG925ZShMbL6aTxkJZDDbqVoeMi5kbnNjcnlwdC1jZXJ0LmNyeXB0b3N0b3JtLmlz


## cs-ustx

US - TX DNSCrypt server provided by https://cryptostorm.is/

sdns://AQIAAAAAAAAADTIwOS41OC4xNDcuMzYgMTNyrVlWMsJBa4cvCY-FG925ZShMbL6aTxkJZDDbqVoeMi5kbnNjcnlwdC1jZXJ0LmNyeXB0b3N0b3JtLmlz


## cs-uswa

US - WA DNSCrypt server provided by https://cryptostorm.is/

Warning: this server is incompatible with DNS anonymization.

sdns://AQIAAAAAAAAADDY0LjEyMC41LjI1MSAxM3KtWVYywkFrhy8Jj4Ub3bllKExsvppPGQlkMNupWh4yLmRuc2NyeXB0LWNlcnQuY3J5cHRvc3Rvcm0uaXM


## cz.nic

CZ.NIC's open DNSSEC validating resolvers in Prague, Czech Republic.
CZ.NIC resolvers neither collect any personal data nor gather
informatio version, uses StevenBlack's host list: https://github.com/StevenBlack/hosts

sdns://AgIAAAAAAAAAAKA-GhoPbFPz6XpJLVcIS1uYBwWe4FerFQWHb9g_2j24OCAyhv9lpl-vMghe6hOIw3OLp-N4c8kGzOPEootMwqWJiA9kb2gubGlicmVkbnMuZ3IEL2Fkcw


## meganerd

DNSCrypt server by MegaNerd.nl (IPv4) - https://meganerd.nl/encrypted-dns-server
Hosted in Amsterdam (AMS1), The Netherlands.

Non-logging, non-filtering, supports DNSSEC.

sdns://AQcAAAAAAAAADjEzNi4yNDQuOTcuMTE0IPyq3HBOXuNgu6FO4pU71Si6CTV6kPD85NA6AThr_6tiGDIuZG5zY3J5cHQtY2VydC5tZWdhbmVyZA


## meganerd-doh-ipv4

DoH server by MegaNerd.nl (IPv4) - https://meganerd.nl/encrypted-dns-server
Hosted in Amsterdam (AMS1), The Netherlands.

Non-logging, non-filtering, supports DNSSEC.

sdns://AgcAAAAAAAAADjEzNi4yNDQuOTcuMTE0oD4aGg9sU_PpekktVwhLW5gHBZ7gV6sVBYdv2D_aPbg4IDKG_2WmX68yCF7qE4jDc4un43hzyQbM48Sii0zCpYmIFWNoZXdiYWNjYS5tZWdhbmVyZC5ubAQvZG9o


## meganerd-doh-ipv6

DoH server by MegaNerd.nl (IPv6) - https://meganerd.nl/encrypted-dns-server
Hosted in Amsterdam (AMS1), The Netherlands.

Non-logging, non-filtering, supports DNSSEC.

sdns://AgcAAAAAAAAAKFsyMDAxOjE5ZjA6NTAwMTpjYmI6NTQwMDowM2ZmOmZlMDc6ZjcwZF2gPhoaD2xT8-l6SS1XCEtbmAcFnuBXqxUFh2_YP9o9uDggMob_ZaZfrzIIXuoTiMNzi6fjeHPJBszjxKKLTMKliYgVY2hld2JhY2NhLm1lZ2FuZXJkLm5sBC9kb2g


## meganerd-ipv6

DNSCrypt server by MegaNerd.nl (IPv6) - https://meganerd.nl/encrypted-dns-server
Hosted in Amsterdam (AMS1), The Netherlands.

Non-logging, non-filtering, supports DNSSEC.

sdns://AQcAAAAAAAAAJ1syMDAxOjE5ZjA6NTAwMTpjYmI6NTQwMDozZmY6ZmUwNzpmNzBkXSD8qtxwTl7jYLuhTuKVO9Uougk1epDw_OTQOgE4a_-rYhgyLmRuc2NyeXB0LWNlcnQubWVnYW5lcmQ


## nextdns

NextDNS is a cloud-based private DNS service that gives you full control
over what is allowed and what is blocked on the Internet.

DNSSEC, Anycast, Non-logging, NoFilters

https://www.nextdns.io/

sdns://AgcAAAAAAAAACjQ1LjkwLjI4LjCgPhoaD2xT8-l6SS1XCEtbmAcFnuBXqxUFh2_YP9o9uDggMob_ZaZfrzIIXuoTiMNzi6fjeHPJBszjxKKLTMKliYgOZG5zLm5leHRkbnMuaW8PL2Ruc2NyeXB0LXByb3h5


## nextdns-ipv6

Connects to NextDNS over IPv6.

NextDNS is a cloud-based private DNS service that gives you full control
over what is allowed and what is blocked on the Internet.

DNSSEC, Anycast, Non-logging, NoFilters

https://www.nextdns.io/

sdns://AgcAAAAAAAAADVsyYTA3OmE4YzA6Ol2gPhoaD2xT8-l6SS1XCEtbmAcFnuBXqxUFh2_YP9o9uDggMob_ZaZfrzIIXuoTiMNzi6fjeHPJBszjxKKLTMKliYgOZG5zLm5leHRkbnMuaW8PL2Ruc2NyeXB0LXByb3h5


## njalla-doh

Non-logging DoH server in Sweden operated by Njalla.

https://dns.njal.la/

sdns://AgcAAAAAAAAADDk1LjIxNS4xOS41M6A-GhoPbFPz6XpJLVcIS1uYBwWe4FerFQWHb9g_2j24OCAyhv9lpl-vMghe6hOIw3OLp-N4c8kGzOPEootMwqWJiAtkbnMubmphbC5sYQovZG5zLXF1ZXJ5


## opennic-R4SAS

DNSSEC - OpenNIC - Non-logging - Uncensored - hosted on ovh.com
Location: Gravelines, France.
Maintained by R4SAS.

sdns://AQcAAAAAAAAADTE1MS44MC4yMjIuNzkgqdYyOk8lgAkmGXUVAs4jHh922d53bIfGu7KKDv_bDk4gMi5kbnNjcnlwdC1jZXJ0Lm9wZW5uaWMuaTJwZC54eXo


## opennic-bongobow

OpenNIC â€¢ Non-logging â€¢ No DNSSEC
Location: Munich, Germany

Warning: this server is incompatible with DNS anonymization.

sdns://AQYAAAAAAAAAETUuMTg5LjE3MC4xOTY6NDY1IFQ1LFVAO4Luk8QH_cI0RJcNmlbvIr_P-eyQnM0yJDJrKDIuZG5zY3J5cHQtY2VydC5uczE2LmRlLmRucy5vcGVubmljLmdsdWU


## opennic-fische

OpenNIC â€¢ Non-logging â€¢ DNSSEC
Location: Nurnberg, Germany

sdns://AQcAAAAAAAAAEDc4LjQ3LjI0My4zOjEwNTMgN4CAbUDR-b3uJJMVzfCdL9ivVV7s8wRhifLRPWBfSmQdMi5kbnNjcnlwdC1jZXJ0Lm5zMS5maXNjaGUuaW8


## opennic-iriseden

OpenNIC â€¢ Non-logging â€¢ DNSSEC
Location: Paris, France
Maintained by iriseden.

sdns://AQcAAAAAAAAAEzYyLjIxMC4NzcuMTg5OjEwNTMgW8vytBGk6u3kvCpl4q88XjqW-w6JJiJ7QBObcFV7gYAfMi5kbnNjcnlwdC1jZXJ0Lm5zMS5pcmlzZWRlbi5mcg


## opennic-luggs

Public DNS server in Canada operated by Luggs

sdns://AQYAAAAAAAAADTE0Mi40LjIwNC4xMTEgHBl5MxvoI8zPCJp5BpN-XDQQKlasf2Jw4EYlsu3bBOMfMi5kbnNjcnlwdC1jZXJ0Lm5zMy5jYS5sdWdncy5jbw


## opennic-luggs2

Second public DNS server in Canada operated by Luggs

sdns://AQYAAAAAAAAADDE0Mi40LjIwNS40NyC8v7fgUME9okIsALCxrJrWSMXCZLy2FwuIPXGKyG66CR8yLmRuc2NyeXB0LWNlcnQubnM0LmNhLmx1Z2dzLmNv


## opennic-rico4514

OpenNIC â€¢ Non-logging â€¢ No DNSSEC
Location: Texas, 13, MX

sdns://AQYAAAAAAAAADTE0Mi40LjIwNC4xMTEgHBl5MxvoI8zPCJp5BpN-XDQQKlasf2Jw4EYlsu3bBOMfMi5kbnNjcnlwdC1jZXJ0Lm5zMy5jYS5sdWdncy5jbw


## oszx

Secure DNS Project by PumpleX - Hosted in the UK by OVH
No Logging / Ad-Blocking
Information at https://dns.oszx.co

sdns://AQIAAAAAAAAAETUxLjM4LjgzLjE0MTo1MzUzIMwm9_oYw26P4JIVoDhJ_5kFDdNxX1ke4fEzL1V5bwEjFzIuZG5zY3J5cHQtY2VydC5vc3p4LmNv


## plan9-dns

Resolver in New Jersey, USA. DNSCrypt protocol. Non-logging, non-filtering, DNSSEC, anonymized.
Running the official Docker image on Vultr by @jlongua1

sdns://AQcAAAAAAAAADjE3My4xOTkuMTI2LjM1IJLwH3z8-G6TDyEk6yXMmGxuss7nGfFnkHrtm4VOSc9SGTIuZG5zY3J5cHQtY2VydC5wbGFuOS1kbnM


## powerdns-doh

By PowerDNS/Open-Xchange https://powerdns.org

sdns://AgcAAAAAAAAAAKA-GhoPbFPz6XpJLVcIS1uYBwWe4FerFQWHb9g_2j24OCAyhv9lpl-vMghe6hOIw3OLp-N4c8kGzOPEootMwqWJiBBkb2gucG93ZXJkbnMub3JnAS8


## publicarray-au

DNSSEC â€¢ OpenNIC â€¢ Non-logging â€¢ Uncensored - hosted on vultr.com
Maintained by publicarray - https://dns.seby.io

sdns://AQcAAAAAAAAADDQ1Ljc2LjExMy4zMSAIVGh4i6eKXqlF6o9Fg92cgD2WcDvKQJ7v_Wq4XrQsVhsyLmRuc2NyeXB0LWNlcnQuZG5zLnNlYnkuaW8


## publicarray-au-doh

DNSSEC â€¢ OpenNIC â€¢ Non-logging â€¢ Uncensored - hosted on vultr.com
Maintained by publicarray - https://dns.seby.io

sdns://AgcAAAAAAAAADDQ1Ljc2LjExMy4zMaA-GhoPbFPz6XpJLVcIS1uYBwWe4FerFQWHb9g_2j24OCAyhv9lpl-vMghe6hOIw3OLp-N4c8kGzOPEootMwqWJiBBkb2guc2VieS5pbzo4NDQzCi9kbnMtcXVlcnk


## publicarray-au2

DNSSEC â€¢ OpenNIC â€¢ Non-logging â€¢ Uncensored - hosted on ovh.com.au
Maintained by publicarray - https://dns.seby.io

sdns://AQcAAAAAAAAAEjEzOS45OS4yMjIuNzI6ODQ0MyALBWhPDQvh2BqXksLUVtlS0e0tH-tW5XqtWfE73l7gZRsyLmRuc2NyeXB0LWNlcnQuZG5zLnNlYnkuaW8


## publicarray-au2-doh

DNSSEC â€¢ OpenNIC â€¢ Non-logging â€¢ Uncensored - hosted on ovh.com.au
Maintained by publicarray - https://dns.seby.io

sdns://AgcAAAAAAAAADTEzOS45OS4yMjIuNzKgPhoaD2xT8-l6SS1XCEtbmAcFnuBXqxUFh2_YP9o9uDggMob_ZaZfrzIIXuoTiMNzi6fjeHPJBszjxKKLTMKliYgRZG9oLTIuc2VieS5pbzo0NDMKL2Rucy1xdWVyeQ


## pwoss.org-dnscrypt

No filter | No logs | DNSSEC | Nuremberg, Germany (netcup) | Maintained by https://pwoss.org/ (Dan)

sdns://AQcAAAAAAAAAEzQ1LjE0Mi4xNzYuMTcwOjQ0MzQgZF8FTkuFVFw6YP5x8ydebnTb8ONP7Ti6P0K1REyhUHgZMi5kbnNjcnlwdC1jZXJ0LnB3b3NzLm9yZw


## quad9-dnscrypt-ip4-filter-pri

Quad9 (anycast) dnssec/no-log/filter 9.9.9.9 / 149.112.112.9

sdns://AQMAAAAAAAAADDkuOS45Ljk6ODQ0MyBnyEe4yHWM0SAkVUO-dWdG3zTfHYTAC4xHA2jfgh2GPhkyLmRuc2NyeXB0LWNlcnQucXVhZDkubmV0
sdns://AQMAAAAAAAAAEjE0OS4xMTIuMTEyLjk6ODQ0MyBnyEe4yHWM0SAkVUO-dWdG3zTfHYTAC4xHA2jfgh2GPhkyLmRuc2NyeXB0LWNlcnQucXVhZDkubmV0


## quad9-dnscrypt-ip4-nofilter-pri

Quad9 (anycast) no-dnssec/no-log/no-filter 9.9.9.10 / 149.112.112.10

sdns://AQYAAAAAAAAADTkuOS45LjEwOjg0NDMgZ8hHuMh1jNEgJFVDvnVnRt803x2EwAuMRwNo34Idhj4ZMi5kbnNjcnlwdC1jZXJ0LnF1YWQ5Lm5ldA
sdns://AQYAAAAAAAAAEzE0OS4xMTIuMTEyLjEwOjg0NDMgZ8hHuMh1jNEgJFVDvnVnRt803x2EwAuMRwNo34Idhj4ZMi5kbnNjcnlwdC1jZXJ0Ln

