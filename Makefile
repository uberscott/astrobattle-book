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
	tar cvf book.tar.gz ./book 

release: tar
	git status --porcelain && echo "git status check fail" && exit 1
	#gh release create ${TAG}
