FROM debian:8.0 
MAINTAINER Daniele Demichelis <demichelis@danidemi.com>

# Install systems 
RUN apt-get update; apt-get install procps -yy
RUN apt-get purge procps -yy && apt-get clean -y && apt-get autoclean -y && apt-get autoremove -y
RUN apt-get -y install curl

# Install node.js
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get install -y nodejs
RUN apt-get install -y build-essential

# Install grunt
RUN npm install -g grunt-cli

# Install git
RUN apt-get install -y git

# Install reveal.js
RUN git clone https://github.com/hakimel/reveal.js.git
RUN cd reveal.js; npm install

COPY index.html /slides/
RUN rm /reveal.js/index.html
RUN ln -s /slides/index.html /reveal.js/index.html


WORKDIR reveal.js 
CMD grunt serve
EXPOSE 8000


