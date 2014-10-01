#!/bin/bash

for i in Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune
do
curl http://en.wikipedia.org/wiki/$i -o $i.txt
if [ -s $i.txt ]
then
echo "$i.txt is not empty"
else
echo "$i.txt is empty"
fi
git add $i.txt
done
git commit -m "planets"
git push https://lag117@github.com/UFCompBio/Lauren_G.git
