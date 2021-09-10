#!/bin/bash

# initialize colors
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo "Deploying to pipeline"
echo "Current dir: $PWD "
export BASE_DIR=/home/ubuntu/caminandum_webapp_flutter
export FLUTTER_PROJECT=$BASE_DIR/caminandum_web
export FLUTTER_BUILD=$FLUTTER_PROJECT/build/web
export WEB_DIRECTORY=/var/www/caminandum_webapp_flutter
export TARGET=ubuntu@51.210.246.200
export GIT_REPO_URL=git@bitbucket.org:caminandum/caminandum-app-flutter.git

# create directories if not exist
mkdir -p $BASE_DIR || echo "$BASE_DIR already exists"
sudo mkdir -p $WEB_DIRECTORY || echo "$WEB_DIRECTORY already exists"

# clear for old code
rm -rf $BASE_DIR

echo "Cloning repo..."
echo "git clone $GIT_REPO_URL $BASE_DIR"
git clone $GIT_REPO_URL $BASE_DIR || exit 1

echo "*************************"
echo "Changing to $FLUTTER_PROJECT "
cd $FLUTTER_PROJECT
# ls -l $BASE_DIR
echo "*************************"

# echo "Pulling master..."
# echo ""
# sudo git reset --hard
# sudo git pull --force origin master || echo "Pulling failed"
echo "Checking git status"
git status # git show --summary && echo "Git show summary done"

echo "Install flutter if not installed yet"
export FLUTTER_BIN=`which flutter`
sudo snap install flutter --classic || echo "Flutter is already installed in $FLUTTER_BIN"

echo "Building the project..."
flutter build web && echo "Build successful" || echo "Build failed"

sudo cp -r $FLUTTER_BUILD/* $WEB_DIRECTORY/ || echo "Failed to copy files from $FLUTTER_BUILD to $WEB_DIRECTORY "

sudo service nginx restart && echo "Restarting NGINX done!"

echo "Successfully finished deploying"
exit 0
