# Oh Hai!

Quickstart sloppy.io JSON which starts a simple apache container. 

Clone the repo:

`git clone https://github.com/sloppyio/oh-hai.git`

Start with

`sloppy start --var domain:mydomain.sloppy.zone oh-hai/oh-hai.json`

where `mydomain.sloppy.zone` has to be a free .sloppy.zone subdomain.

More info at http://sloppy.io

## Build your own image

Change files/index.php to your needs.
Then build and push it:

```
docker build -t your-repo/your-image-name .
docker push your-repo/your-image-name
```

### Test it

`docker run -it p 80:80 your-repo/your-image-name`

If everything is fine, you can now use this image in sloppy.json file 
