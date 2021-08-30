@echo off

echo "============ [STARTS] PUSH CODE TO MYBLOG REPO ============="

git add .
git commit -m "update source code"
git pull
git push

echo "============ [END] PUSH CODE TO MYBLOG REPO ============="

echo "============ [START] CREATE NEW PAGES ============="

hexo clean & hexo g & hexo d

call echo "============ [END] CREATE NEW PAGES ============="

call pause