# Docker-reveal.js

`Docker-reveal.js` is a Docker image that let you run [Reveal.js](http://lab.hakim.se/reveal-js/#/) slideshows with ease.
It embeds [Pandoc](http://johnmacfarlane.net/pandoc/) to quickly convert **markdown** text in **reveal.js** enabled html.




## Installation

This image is available on the [Docker Hub](https://registry.hub.docker.com/u/danidemi/docker-reveal.js/>),
and it is automatically built each time an update is available, so the easiest way to get the image is to
rely on Docker.

	$ sudo docker pull docker-reveal.js:latest

If for any reason, you prefer to build the image yourself, just clone this repository and build the image yourself.

	$ git clone https://github.com/danidemi/docker-reveal.js.git
	$ cd docker-reveal.js
	$ docker build -t "danidemi/docker-reveal.js:latest" .




## Create Your Slideshow

1. Create a directory in your filesystem where you'll author and run your reveal.js slideshow.

	$ mkdir &lt;my_fancy_slideshow>
	$ cd &lt;my_fancy_slideshow>

2. Run a Docker container with this command.

	$ docker run -d -v $(pwd):/slides/ -p 8000:8000 "danidemi/docker-reveal.js:latest"

3. Point your browser to <http://127.0.0.1:8000>

4. Start editing your slideshow file. 

	$ touch index.html

5. If you prefer to edit your slideshow in markdown, create a file following the explanations presented in the [pandoc manual](http://johnmacfarlane.net/pandoc/demo/example9/producing-slide-shows-with-pandoc.html).

	$ touch index.md

6. Let the `pandoc` installation included in the container to convert your `.md` file into a `reveal.js` enabled file.

	$ (sudo docker exec -i $dockerid /bin/sh -c "pandoc -t revealjs -s -o /slides/index.html") < index.md

5. Your changes are immediately visible in the browser.

6. Happy presentation




## Issues

Plese, feel free to open any issue you should have on the [GitHub project page](https://github.com/danidemi/docker-reveal.js/issues).




## Internals

This Docker Image is based on the default Reveal.js installation.
`Gruntfile.js`, however defines two additional folders that are served through http, `/slides` and `/pandoc`.

* `/slides` directory is meant to be used as a Docker volume, mapped to the folder on your host that contains the slideshow materials.
This way, for instance, when you hit <http://127.0.0.1:8000>, the content that is actually served comes from `/slides` that in turn is mapped 
to your presentation directory on your host.

* `/pandoc` directory is meant to provide `.css` and `.js` resources as expected by Pandoc produced files.





