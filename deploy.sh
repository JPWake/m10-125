#/usr/bin/env sh
set -e
npm run build
cd dist
git init
git add -A
git commit -m 'New Deployment'
git push -f git@github.com:JPWake/m10-125.git master:gh-pages
cd -