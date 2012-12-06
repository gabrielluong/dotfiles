#!/usr/bin/env python
################################################################################
################################################################################
# A Transmission (http://www.transmissionbt.com/) script that will remove
# torrents that are completed. If no files are being downloaded, exit
# Transmission.
#
# Author:
# Gabriel Luong gabriel.luong@gmail.com
#
################################################################################
################################################################################

import os
import transmissionrpc

tc = transmissionrpc.Client('localhost', port=9091)

# Remove completed torrents
for key, torrent in tc.list().items():
    if torrent.progress == 100:
        tc.remove(key)

# Kill Transmission if no more downloads are happening
if len(tc.list()) == 0:
    os.system("killall Transmission")

exit()
