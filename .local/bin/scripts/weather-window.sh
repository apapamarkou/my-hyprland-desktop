#!/bin/bash

echo "https://wttr.in/$CITY?3pq&lang=$LOCALE_CODE"
curl "https://wttr.in/$CITY?3pq&lang=$LOCALE_CODE"

read -n 1

