
# Use Kvantum themes for qt apps
export QT_STYLE_OVERRIDE=kvantum

# Use old renderer for GTK apps (troubleshoot for legacy GPUs)
export GSK_RENDERER=gl

# Troubleshoot for wl-roots + java GUI app font rendering
export _JAVA_AWT_WM_NONREPARENTING=1
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on"



# Use ipinfo.io to find the city
export CITY=$(curl -s https://ipinfo.io/city | tr '[:upper:]' '[:lower:]')

# use LC_NUMERIC as script output LOCALE name
export LOCALE_CODE=$(echo ${LC_NUMERIC:-$LANG} | cut -d'_' -f1)

# Use ipinfo.io to find the city
LOCATION=$(curl -s https://ipinfo.io/loc)
export LATITUDE=$(echo $LOCATION | cut -d',' -f1)
export LONGITUDE=$(echo $LOCATION | cut -d',' -f2)
