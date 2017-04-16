build:
	docker build -t darthhater/phantomjs2 .

build.local: dockerize
	docker build -t darthhater/phantomjs2 -f Dockerfile.localbuild .

dockerize: dockerize.build
	docker run -ti --rm \
		-v `pwd`:/workspace \
		-w /workspace \
		darthhater/phantomjs2-dockerize

dockerize.build:
	docker build -t darthhater/phantomjs2-dockerize -f Dockerfile.dockerize .

phantomjs.build:
	docker build -t darthhater/phantomjs2 -f Dockerfile.buildphantomjs .

test:
	docker run -ti --rm \
		-v `pwd`:/workspace \
		-w /workspace \
		darthhater/phantomjs2 \
		examples/screenshot.js https://google.com /workspace/examples/google.png 1500px
	docker run -ti --rm \
		-v `pwd`:/workspace \
		-w /workspace \
		darthhater/phantomjs2 \
		examples/screenshot.js https://google.com /workspace/examples/google.pdf 1500px
