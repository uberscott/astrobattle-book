TAG := "0.0.2"
TAR := "book.tar.gz"
OUt := "book"

clean-tar-gz:
	rm ${TAR}

clean:  clean-tar-gz
	rm -rf ${OUT}

build:
	mdbook build

tar: build
	tar cvf ${TAR} ./${OUT}

release: tar
	gh release create ${TAG}
	gh upload ${TAG} ${TAR}
