#!/bin/sh
SRC=../orbium

DESTS=("android/Orbium/assets/www" \
"ios/Orbium/www" \
"ios/OrbiumHD/www" \
"webos/Orbium" \
"webos/OrbiumHD" \
)

for DEST in "${DESTS[@]}"
do
	rm -rf $DEST/css $DEST/gfx $DEST/js $DEST/snd $DEST/index.html

	if [ "$1" != "clean" ]
	then
		cp -r $SRC/css $SRC/gfx $SRC/js $SRC/snd $SRC/index.html $DEST/

		rm $DEST/js/server.js

		if [[ $DEST == *android* ]]
		then
			rm -rf $DEST/js/424x289.js $DEST/gfx/424x289
			rm -rf $DEST/js/936x637.js $DEST/gfx/936x637
			rm -rf $DEST/js/1024x697.js $DEST/gfx/1024x697
		elif [[ $DEST == *ios* && $DEST == *HD* ]]
		then
			rm -rf $DEST/snd
			rm -rf $DEST/js/344x234.js $DEST/gfx/344x234
			rm -rf $DEST/js/424x289.js $DEST/gfx/424x289
			rm -rf $DEST/js/464x316.js $DEST/gfx/464x316
			rm -rf $DEST/js/704x479.js $DEST/gfx/704x479
			rm -rf $DEST/js/936x637.js $DEST/gfx/936x637
		elif [[ $DEST == *ios* ]]
		then
			rm -rf $DEST/snd
			rm -rf $DEST/js/344x234.js $DEST/gfx/344x234
			rm -rf $DEST/js/424x289.js $DEST/gfx/424x289
			rm -rf $DEST/js/704x479.js $DEST/gfx/704x479
			rm -rf $DEST/js/1024x697.js $DEST/gfx/1024x697
		elif [[ $DEST == *webos* && $DEST == *HD* ]]
		then
			rm -rf $DEST/js/344x234.js $DEST/gfx/344x234
			rm -rf $DEST/js/424x289.js $DEST/gfx/424x289
			rm -rf $DEST/js/704x479.js $DEST/gfx/704x479
			rm -rf $DEST/js/936x637.js $DEST/gfx/936x637
		elif [[ $DEST == *webos* ]]
		then
			rm -rf $DEST/js/344x234.js $DEST/gfx/344x234
			rm -rf $DEST/js/936x637.js $DEST/gfx/936x637
			rm -rf $DEST/js/1024x697.js $DEST/gfx/1024x697
		fi
	fi
done
