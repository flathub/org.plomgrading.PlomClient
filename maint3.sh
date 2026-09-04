#!/bin/bash

# flatpak-pip-generator does not do wheels, but this newer tool does

set -e

# must match the python3 of the base image
archy="311-x86_64 311-aarch64 312-x86_64 312-aarch64 313-x86_64 313-aarch64 314-x86_64 314-aarch64"


# plom-common and its dependencies

req2flatpak --requirements-file requirements.txt \
	--target-platforms ${archy} --outfile python3-plom-common.yaml


# now build the yaml files for deps of plom-client (that are not deps of plom-common)
# TODO: maintaining these requires some care about overlaps with the above

req2flatpak --requirements \
	Pillow==12.3.0 \
	--target-platforms ${archy} --outfile python3-Pillow.yaml

req2flatpak --requirements \
        platformdirs==4.11.7 \
	--target-platforms ${archy} --outfile python3-platformdirs.yaml

req2flatpak --requirements \
        pyspellchecker==0.9.0 \
	--target-platforms ${archy} --outfile python3-pyspellchecker.yaml
