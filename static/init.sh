#!/bin/sh

# Clone template, update files, push to new location.

# 1. check if repository name provided

if [ -z "$1" ]
then
  echo "Usage: ./init.sh <your repository name>"
  exit -1
fi

# 2. Clone template repository

echo "Clone documentation template into new repository: $1"

git clone https://github.com/ncbi/ncbi_doc_template.git $1

# 3. Modify files: replace /ncbi_doc_template/ with /<your repository name>/

cd $1

echo "Prepare files for publishing..."

FILES="_includes/header.html
README.md
_layouts/default.html
pages/chapter2.md
robots.txt
static/css/footer.css"

for f in $FILES
do
	echo "Processing $f"
    sed -i 's/\/ncbi_doc_template\//\/'$1'\//g' $f
done

FILES2="default_files/4025445.js
_config.yml"

for f in $FILES
do
	echo "Processing $f"
    sed -i 's/\/ncbi_doc_template /\/'$1' /g' $f
done
 
# delete .git directory 
rm -rf .git

# 4. Push directory to new git location

# init git 
echo "Push documentation to your GIT repository: https://github.com/ncbi/$1.git"
echo "This repository should be already created by NCBI GitHub admins (open JIRA ticket in OSS project) and you should have your GitHub login."
echo "Press [n] to stop and [y] to continue..."
read -n 1 -p "" userinput

if [ "$userinput" = "n" ]; then
  echo "Script terminated..."
  exit -1
fi

git init
git add --all
git commit -m "Initial Commit"
git remote add origin https://github.com/ncbi/$1.git
git checkout -b gh-pages
git push -u origin gh-pages

retVal=$?
if [ $retVal -ne 0 ]; then
    echo "Failed to push to github. Exit script..."
    exit -1
fi
  
echo "$1 is pushed to GIT and published. Check results on Settings page: http://github.com/ncbi/$1/settings"
echo "Script finished successfully..." 
 
exit 0
