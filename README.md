# pyhydroquebec-hass-addons

HASS addon code for pyhydroquebec integration.

Supported Arch: "armhf", "armv7", "aarch64", "amd64", "i386"

Work in progress, please report any issue.

# Install

Go in the supervisor page -> Add-on Store -> click on the vertical "..." on the top right of the page, add this repository: https://github.com/arsenicks/pyhydroquebec-hass-addons.git

Once completed, go into the pyhydroquebec addon and click install.

# Setup/Configuration

First, create a file named "pyhq-config.yaml" in your hass config directory. You can use the pyhq-config.yaml included in this directory as example.

Then add all the required configurations item in the Config tab of the add on. There's currently two places where you have to enter your HQ user/pass and contract number(config files and inside the config tab of the addon), this should be fixed soon.

# TODO

- Find a way to use only ENV vars and get rid of the config file
- Improve entrypoint.sh to test if required vars are set
- Try to add some logic, if HQ user/pass are set but not contract number, try to print contract in log and stop
- ~~Rebuild image using hass add-on tooling(https://github.com/home-assistant/builder) and better understand the whole image thing in hass add-on~~
- Cleanup of name, repos url and other stuff.

Let me know your feeling, suggestions, ideas.
