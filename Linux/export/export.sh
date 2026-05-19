#!/bin/bash

layout='us'
variant='rs-sp'

setxkbmap "$layout" "$variant" -print | xkbcomp -xkm - "$layout_$variant.xkm"
setxkbmap "$layout" "$variant" -print | xkbcomp -C - "$layout_$variant.h"

