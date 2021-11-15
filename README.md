# pyhydroquebec-hass-addons

HASS addon code for pyhydroquebec integration

Work in progress, please report any issue.

# Install

Go in the supervisor page -> Add-on Store -> click on the vertical "..." on the top right of the page, add this repository: https://github.com/arsenicks/pyhydroquebec-hass-addons.git

Once completed, go into the pyhydroquebec addon and click install.

# Setup/Configuration

First, create a file named "pyhq-config.yaml" in your hass config directory. You can use the pyhq-config.yaml included in this directory as example.
Then add all the required configurations item in the Config tab of the add on. There's currently two places where you need to add HQ user/pass and contract number, this will be fixed later.
