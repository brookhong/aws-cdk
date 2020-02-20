#!/bin/bash
# clones @aws-cdk/assert into here
scriptdir=$(cd $(dirname $0) && pwd)
cd $scriptdir
set -euo pipefail
src="../../@aws-cdk/assert"
rsync -av $src/lib/ lib/
rsync -av $src/test/ test/

files="README.md LICENSE NOTICE .npmignore"

for file in ${files}; do
  cp $src/$file .
done