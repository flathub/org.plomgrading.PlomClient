# org.plomgrading.PlomClient: Flatpak support

This a Flatpak manifest for the [Plom](https://plomgrading.org) Client.


## Credits

For the python dependencies, I use [flatpak-pip-generator] and [req2flatpak].

[flatpak-pip-generator]: https://github.com/flatpak/flatpak-builder-tools/blob/master/pip/flatpak-pip-generator
[req2flatpak]: https://johannesjh.github.io/req2flatpak/main/index.html


## Maintenance

I bump the deps according to the upstream `requirements.txt` file.
For example,
```
./flatpak-pip-generator arrow==1.3.0 --yaml
req2flatpak --requirements \
    platformdirs==4.3.6 \
    --target-platforms "311-x86_64 311-aarch64 312-x86_64 312-aarch64" \
    --outfile python3-platformdirs.yaml
```
For `requests-toolbelt`, `flatpak-pip-generator` tends to re-order the entries,
so I do that one somewhat manually based on the diff output.

Note: `python3-packaging`, `python3-tomli` are
in [com.riverbankcomputing.PyQt.BaseApp](https://flathub.org/apps/com.riverbankcomputing.PyQt.BaseApp).

Then I submit a branch to github.com, which causes the Flathub bot to try
building it.  It also gives you a link that folks can use if they need a
new version in a hurry.


## License

SPDX-License-Identifier: FSFAP

This repo is licensed under the FSF All-Permissive license.
Some files in this repo are autogenerated; these can also be considered under this license.

Copying and distribution of this file, with or without modification,
are permitted in any medium without royalty provided the copyright
notice and this notice are preserved.  This file is offered as-is,
without any warranty.

Note that Plom itself is available under the AGPL-3.0-or-later license.
