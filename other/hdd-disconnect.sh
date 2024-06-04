#!/bin/bash

umount /dev/sda2
udisksctl power-off -b /dev/sda

exit 0