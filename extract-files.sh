#!/bin/sh

set -e

export DEVICE=goghvmu
export VENDOR=samsung
./../gogh-common/extract-files.sh $@
