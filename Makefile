DIR := "~/websites/astrobattle.com/hugo/static/book"

clean:
	rm -rf book
	rm -rf ${DIR}

build:
	mdbook build

deploy: build
	mkdir -p ${DIR}
	cp -r book ${DIR}
