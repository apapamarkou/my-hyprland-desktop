#!/bin/bash

# Απενεργοποίηση όλων των συνηθισμένων display managers
echo "Απενεργοποίηση των display managers..."
sudo systemctl disable gdm.service
sudo systemctl disable lightdm.service
sudo systemctl disable sddm.service
sudo systemctl disable lxdm.service

# Σταμάτημα των display managers
echo "Σταμάτημα των display managers..."
sudo systemctl stop gdm.service
sudo systemctl stop lightdm.service
sudo systemctl stop sddm.service
sudo systemctl stop lxdm.service

# Δημιουργία ή αντικατάσταση του config αρχείου για το greetd
echo "Δημιουργία ή αντικατάσταση του αρχείου διαμόρφωσης /etc/greetd/config.toml..."
sudo tee /etc/greetd/config.toml > /dev/null << EOF
[terminal]
vt = 1

[default_session]
command = "/usr/bin/tuigreet --remember"
user = "greeter"
EOF

# Ενεργοποίηση και εκκίνηση του greetd
echo "Ενεργοποίηση και εκκίνηση του greetd..."
sudo systemctl enable greetd.service
sudo systemctl start greetd.service

echo "Η διαδικασία ολοκληρώθηκε. Ο greetd είναι ενεργοποιημένος και τρέχει."

