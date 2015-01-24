# Docker-reveal.js

`docker-reveal.js` is a Docker image that let you run reveal.js slideshows with ease.
It embeds `pandoc` to quickly convert **markdown** text in **reveal.js** enabled html.



## Installation

This image is available on the Docker Hub at <https://registry.hub.docker.com/u/danidemi/docker-reveal.js/>,
and it is automatically built each time an update is available, so the easiest way to get the image is to
rely on Docker.

	$ sudo docker pull docker-reveal.js:latest

If for any reason, you prefer to build the image yourself, just clone this repository and build the image yourself.

	$ git clone https://github.com/danidemi/docker-reveal.js.git
	$ cd docker-reveal.js
	$ docker build -t "danidemi/docker-reveal.js:latest" .

## Create And Run The slideshow

1. Download the sources.

2. Generate the Docker image with the following command

	$ sudo docker build -t docker-reveal.js .

3. Create a directory in your filesystem where you'll author and run your reveal.js slideshow. The file has to be called `index.html`

	$ mkdir &lt;my_fancy_slideshow>
	$ cd &lt;my_fancy_slideshow>
	$ echo "&lt;html>&lt;body>&lt;h1>my slideshow&lt;/h1>&lt;/body>&lt;/html>" > index.html

4. Run a Docker container with this command.

	$ docker start -d -p 8000:8000 -v <my_fancy_slideshow>:/slides/ docker-reveal.js 

5. Point your browser to [http://127.0.0.1:8000](http://127.0.0.1:8000)

6. Happy presentation

 
