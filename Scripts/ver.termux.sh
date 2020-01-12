#/data/data/com.termux/files/usr/bin/bash

cor_vermelha="\e[31m"
cor_verde="\e[32m"
cor_amarela="\e[33;1m"
cor_reset="\e[0m"

function veri() {

	valprop=$(getprop $1)

	if [[ "$valprop" ]] ; then

		printf " $2: "

		echo "$valprop" | grep -q "$3"

		if [[ $? -eq 0 ]] ; then

			if [[ "$6" ]] ; then

				printf "${cor_amarela}"

			else

				printf "${cor_verde}"

			fi

			if [[ "$4" ]] && [[ "$4" != "same" ]] ; then
				valprop="$4"
			fi

		else

			printf "${cor_vermelha}"

			if [[ "$5" ]] && [[ "$5" != "same" ]] ; then
				valprop="$5"
			fi

		fi

		printf "[${valprop}]${cor_reset}\n"

	fi

}

function shprop() {

	valprop=$(getprop $1)

	if [[ "$valprop" ]] ; then

		echo " $2: [$valprop]"

	fi

}

shprop ro.product.model Modelo
shprop ro.build.version.release Android
shprop ro.product.cpu.abi Arquitetura
shprop gsm.operator.alpha Operadora
#shprop gsm.phone.imei IMEI
#shprop net.hostname Hostname

veri ro.build.type Profile user
veri ro.adb.secure "ADB locked" 1 "true" "false"
veri ro.boot.flash.locked "Flash locked" 1 "true" "false"
veri ro.oem_unlock_supported "OEM unlock support" "true"
veri sys.oem_unlock_allowed "OEM unlock allowed" 0 "false" "true"

# Encryption FDE/FBE
veri ro.crypto.state "Encryption" encrypted
enctype=$(getprop ro.crypto.type)
andver=$(getprop ro.build.version.release | sed -e "s,\.,\n,g" | head -1)

if [[ $andver -lt 9 ]] ; then
	if [[ $enctype == "block" ]] ; then
		argvar="block FDE FBE"
	else
		argvar="file FBE FDE 1"
	fi
else
	argvar="$enctype"
fi
veri ro.crypto.type "Encryption type" $argvar


veri ro.memperf.enable "Memory perf" "false" "false" "true"
veri security.perf_harden "Security harden" 1 "true" "false"


# Security patch
secpatchvar=$(getprop ro.build.version.security_patch | sed -e "s,-,\n,g")

dateyear=$(date +%Y)
patchyear=$(echo "$secpatchvar" | head -1)

patchmon=$(echo "$secpatchvar" | head -2 | tail -1)

calculo=$[($dateyear-$patchyear)*12-$patchmon]

if [[ $calculo -le 2 ]] ; then
	argvar="20"
elif [[ $calculo -gt 6 ]] ; then
	argvar="9999"
else
	argvar="20 same same 1"
fi

veri ro.build.version.security_patch "Security patch" $argvar
