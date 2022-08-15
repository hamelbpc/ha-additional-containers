#!/usr/bin/env bash

#set -x

function ocrmypdf()
{
#docker run --rm -i  --user "$(id -u):$(id -g)" --workdir /data -v "$PWD/output:/data" jbarlow83/ocrmypdf --sidecar $3 - - <$1 >$2
docker run --rm -i  --user "$(id -u):$(id -g)" --workdir /data -v "$PWD/output:/data" jbarlow83/ocrmypdf -l eng --jobs 1 --deskew --clean --rotate-pages --sidecar $3 - - <$1 >$2
}

docker run --rm -i jbarlow83/ocrmypdf --version

for file in input/*.pdf
do
echo "Processing file: $file"
outputfile=$(echo $file|sed 's/^input\//output\//')
outputocr=$(echo $file|sed -e 's/^input\///' -e 's/\.pdf/\.txt/')
#docker run --rm -i jbarlow83/ocrmypdf  - - <$file >$outputfile 2>/dev/null
ocrmypdf $file $outputfile $outputocr 
done

