# Mutt-in-Docker

Run mutt mail app in Docker

## How to use

Edit Dockerfile, set USER_NAME and set configuration in .muttrc.
Next, build container:

```
docker build -t mutt .
```

and run it:


```
docker run -v $(pwd)/mutt/.muttrc:/home/YOUR_USER/.muttrc -it mutt /bin/bash
```

Switch to your user:

```
su USER_NAME
```

Run mutt:

```
mutt
```
