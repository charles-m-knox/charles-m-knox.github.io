build:
	cd blog && hugo -D -v
	rm -rf ./docs
	cp -ar blog/public ./docs
