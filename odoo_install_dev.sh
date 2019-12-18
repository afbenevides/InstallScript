#!/bin/bash
################################################################################
# Script for installing Odoo locally for dev
# Author: Alexandre Ferreira Benevides
################################################################################

. ./env_var.sh

if [[ "$OSTYPE" == "linux-gnu" ]]; then
        echo  "\n---- linux-gnu installation process started ----"
        ./odoo_install_debian_dependancy.sh
        ./odoo_install_locally.sh
elif [[ "$OSTYPE" == "darwin"* ]]; then
        echo  "\n---- Darwin installation process started ----"
        ./odoo_install_OSX_dependancy.sh
        ./odoo_install_locally.sh
fi
