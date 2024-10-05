#!/bin/bash

# Σύντομη πρόβλεψη για εμφάνιση στο Waybar
short_weather="   $(curl -s "wttr.in/$CITY?format=1&lang=$LOCALE_CODE")   "

# Πλήρης πρόβλεψη για το tooltip (Θεσσαλονίκη)
full_weather="  $(curl "https://wttr.in/$CITY?format=4&lang=$LOCALE_CODE")  "

# Εμφάνιση της σύντομης πρόβλεψης και της πλήρους ως tooltip
echo -e "$short_weather\n$full_weather"

