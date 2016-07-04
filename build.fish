#!/usr/local/bin/fish

cd $WYVERN_HOME/tools
rm -r ./build
ant build
cd -

sudo cp -rf $WYVERN_HOME wyvern
docker build .
