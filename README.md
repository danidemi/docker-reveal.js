# Docker-reveal.js

`docker-reveal.js` is a Docker image that let you run reveal.js slideshow with ease.

## Run your slideshow

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

 
