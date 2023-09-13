Ever wanted to clean your keyboard without unpluging or turning off you computer?

Install `xorg-xinput`

Find the id of your keyboard/mouse/tochpad/etc. with `xinput` command and assign them to `u_ids` list in the script like this:

```sh
# Define the list of IDs
u_ids=(10 12 11 13 14 6 7 8 9)
```

Now run `suspension.sh` to disable your things for 30 seconds.

There is also a scary way of doing this which does not require to extract ids manually. You can run `scary_suspension.sh` for that.
