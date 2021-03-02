

build:
	-rm -rf ./blog/public ./resources/_gen
	cd blog && hugo -D -v
	-rm -rf ./docs
	cp -ar blog/public ./docs
	touch ./docs/.nojekyll
	echo "charlesmknox.com" > ./docs/CNAME
	# cp ./static/robots.txt docs/robots.txt

serve:
	cd blog && hugo serve -D -v
