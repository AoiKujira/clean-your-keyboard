Ever wanted to clean your keyboard without unpluging or turning off you computer?

install 'xorg-xinput'

find the id of your keyboard/mouse/tochpad/etc. with 'xinput' command and assign them to `u_ids` list in the script like this:

```sh
# Define the list of IDs
u_ids=(10 12 11 13 14 6 7 8 9)
```

now run 'suspension.sh' to disable your things for 30 seconds.

