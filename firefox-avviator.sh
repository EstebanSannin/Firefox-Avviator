#!/bin/bash
#Author Stefano Viola
temp=`tempfile`
gdialog --title "Url Avviator 0.1 Beta Author: Esteban Sannin" \
--inputbox "Inserisci Url:                                                                                                                                                                                       | " \
150 500 \
"url"  2>$temp
url=`cat $temp`
null=
if [$url = $null]; then
gdialog --title "Url Avviator 0.1 Beta Author: Esteban Sannin" \
--infobox "Hai annullato la richiesta!" 100 100;
else
gdialog --title "Url Avviator 0.1 Beta Author: Esteban Sannin" \
--infobox "Sto aprendo $url" 100 100;\
firefox $url &
fi
