

build:
	cd blog && hugo -D -v
	-rm -rf ./docs
	cp -ar blog/public ./docs
	touch ./docs/.nojekyll
	echo "charlesmknox.com" > ./docs/CNAME

serve:
	cd blog && hugo serve -D -v
