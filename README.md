# Auto Script VPN


## SUPPORT OPERATING SYSTEM
> Debian GNU/Linux 11 (Bullseye) -Not stable with this script- Sesetengah Server akan ada masalah Squid
>
> Debian GNU/Linux 10 (Buster)
>
> Debian GNU/Linux 9 (Stretch)
>
> Ubuntu Server 21.04 LTS (Hirsute Hippo)
>
> Ubuntu Server 20.04 LTS (Focal Fossa)
>
> Ubuntu Server 18.04 LTS (Bionic Beaver)




## Anda hanya perlu menyalin script dibawah dan paste di Server anda! 

### SILA SALIN DAN PASTE SAHAJA DI VPS ANDA
```
sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt install -y bzip2 gzip coreutils screen curl && wget https://raw.githubusercontent.com/rizha2/rizhavps/main/installer.sh && chmod +x installer.sh && sed -i -e 's/\r$//' installer.sh && screen -S setup ./installer.sh
```
