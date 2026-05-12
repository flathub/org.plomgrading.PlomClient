#!/bin/bash

set -e

# flatpak-pip-generator does not do wheels, but this newer tool does

# must match the python3 of the base image
archy="311-x86_64 311-aarch64 312-x86_64 312-aarch64 313-x86_64 313-aarch64 314-x86_64 314-aarch64"

req2flatpak --requirements-file requirements.txt \
	--target-platforms ${archy} --outfile dependencies.yaml

