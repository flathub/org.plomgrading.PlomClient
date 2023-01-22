# org.plomgrading.PlomClient: Flatpak support

This a Flatpak manifest for the [Plom](https://plomgrading.org) Client.


## Credits

For the python dependencies, I used [flatpak-pip-generator].  Doesn't seem
to have an installer: I just copied the single Python file off github.

[vidcutter]: https://github.com/flathub/com.ozmartians.VidCutter/blob/master/com.ozmartians.VidCutter.json
[flatpak-pip-generator]: https://github.com/flatpak/flatpak-builder-tools/blob/master/pip/flatpak-pip-generator

## Maintenance

I bump the deps according to the upstream `requirements.txt.client` file.
For example,
```
./flatpak-pip-generator appdirs==1.4.4 --yaml
./flatpak-pip-generator Pillow==9.1.0 --yaml
```
For `requests-toolbelt`, this tends to re-order the entries.  So
I sort of do that one manually based on the output.

Note: python3-packaging, python3-toml, python3-tomli are in com.riverbankcomputing.PyQt.BaseApp

Then I submit a branch to github.com, which causes the Flathub bot to try
building it.  It also gives you a link that folks can use if they need a
new version in a hurry.
