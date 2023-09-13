#!/bin/bash

# =========================
# xinput(1)

# NAME
#        xinput - utility to configure and test X input devices

# SYNOPSIS
#        xinput [COMMAND] [OPTIONS] [DEVICE]

#        reattach slave master
#                Reattach slave to master.

#        float slave
#                Remove slave from its current master device.
# ========================

#!/bin/bash

# Define the list of IDs
# u_ids=(10 12 11 13 14 6 7 8 9)

# Iterate over the IDs and disable them
for u_id in "${u_ids[@]}"; do
    xinput disable "$u_id"
done

# start timer
./timer.sh 30

# Iterate over the IDs and enable them
for u_id in "${u_ids[@]}"; do
    xinput enable "$u_id"
done

