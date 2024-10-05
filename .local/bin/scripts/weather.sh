#!/bin/bash
# Σύντομη πρόβλεψη για εμφάνιση στο Waybar
short_weather="   $(curl -s "https://wttr.in/?format=1&lang=el")   "

# Πλήρης πρόβλεψη για το tooltip (Θεσσαλονίκη)
full_weather="  $(curl -s "https://wttr.in/thessaloniki?format=4&lang=el")  "

# Εμφάνιση της σύντομης πρόβλεψης και της πλήρους ως tooltip
echo -e "$short_weather\n$full_weather"
