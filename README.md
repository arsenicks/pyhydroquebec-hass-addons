
Hi, I've neglected this repository for too long and I should have updated this before. 

----



***This project is now unsupported because the pyhydroquebec python library I used has been renamed and reworked from scratch.***


----

Don't feel bad, it's now really better and there's a addon you can use in HA too. I will update the readme here to reflect those information.

New project website: https://hydroqc.ca/fr/
Gitlab project: https://gitlab.com/hydroqc
Hass-addon repository: https://gitlab.com/hydroqc/hydroqc-hass-addons

There's a Discord if you have questions or want to contribute: https://discord.gg/2NrWKC7sfF

I'll close this issue and the other than update the readme with the information above.

Thanks, have a great day!


----



# pyhydroquebec-hass-addons

HASS addon code for pyhydroquebec integration.

Supported Arch:
![Supports aarch64 Architecture][aarch64-shield]
![Supports amd64 Architecture][amd64-shield]
![Supports armhf Architecture][armhf-shield]
![Supports armv7 Architecture][armv7-shield]
![Supports i386 Architecture][i386-shield]

Work in progress, please report any issue.

# Install

Option 1: click this button:
[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Farsenicks%2Fpyhydroquebec-hass-addons)

Option 2: Go in the supervisor page -> Add-on Store -> click on the vertical "..." on the top right of the page, add this repository: https://github.com/arsenicks/pyhydroquebec-hass-addons.git

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

[aarch64-shield]: https://img.shields.io/badge/aarch64-yes-green.svg
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg
[armhf-shield]: https://img.shields.io/badge/armhf-yes-green.svg
[armv7-shield]: https://img.shields.io/badge/armv7-yes-green.svg
[i386-shield]: https://img.shields.io/badge/i386-yes-green.svg
