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
docker run -v $(pwd)/mutt/.muttrc:/home/YOUR_USER/.muttrc -it mutt mutt
```

You can also add a bash alias to .bashrc:

```
alias mutt='docker run -v /mutt/conf/path/.muttrc:/home/YOUR_USER/.muttrc -it mutt mutt'
```
