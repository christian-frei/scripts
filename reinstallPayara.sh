#!/bin/bash
#############################################################
### payara reinstall
#############################################################

version="5.2021.1"
# url="https://info.payara.fish/cs/c/?cta_guid=b9609f35-f630-492f-b3c0-238fc55f489b&signature=AAH58kHURMMP37RSslhzdGFQbnCZHx0n-g&placement_guid=7cca6202-06a3-4c29-aee0-ca58af60528a&click=d8c20954-0967-4f75-b38b-ff897224e566&hsutk=ea5efd742bb58fb8feb372fdf5080867&canon=https%3A%2F%2Fwww.payara.fish%2Fdownloads%2Fpayara-platform-community-edition%2F&utm_referrer=https%3A%2F%2Fwww.payara.fish%2Fdownloads%2F&portal_id=334594&redirect_url=APefjpGrGGobhSPmQw4e6xxLQ0C5NQO2gRoxvURqyVd9UWbJRXCivtpXEiHy5Fzyu_aBlrG21MdvCLocV3xe-ElvnTA3ReJ-vZGym8XiFliRc-qpDyQ6sK7K24qHdjUQqzNRg8LlH7oboeDGMHqqa-LLm7G97TQIwdnLy4NnW1xJdb3uT8WJZrS35YKE-fggudugOEzhHd5DYQXYokdPh_RR8geBQPcp7VvjptB8Va21tzZOiOV2kuYHOV5vV36UbLD_x_YeeI6o-MUW6UbPqrg154h0P6QUz8EUG3WTWA2U5PI-OJSMyeOkrirv7od9Drfgl77SFyu47xEaYYlje6Oh5j0RAtl2Nw&__hstc=229474563.ea5efd742bb58fb8feb372fdf5080867.1613847570274.1613847570274.1613847570274.1&__hssc=229474563.1.1613847570274&__hsfp=476620811"
filename="payara-$version.tar.gz"
serverDirectory="$HOME/dev/server"
downloadDirectory="$HOME/Downloads"

# [ ! -f "$downloadDirectory/$filename" ] \
    # && wget -c $url -P  "$downloadDirectory"

[ -d "$serverDirectory/payara*" ] \
    && rm -rf "$serverDirectory/payara*"

cp -v "$downloadDirectory/$filename" "$serverDirectory"

tar -xzvf "$serverDirectory/$filename" -C $serverDirectory

rm "$serverDirectory/$filename"

exit 0
