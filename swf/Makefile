all: clean release

flash: 
	mxmlc -output ./colorbox.swf -static-link-runtime-shared-libraries -target-player 10 ./Main.as

release: flash
	cp ./colorbox.swf ../content/.

clean: 
	rm -rf ../content/colorbox.swf
