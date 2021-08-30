@echo off

echo "============ [STARTS] PUSH CODE TO MYBLOG REPO ============="

git add .
git commit -m "update source code"
git pull
git push

echo "============ [END] PUSH CODE TO MYBLOG REPO ============="

echo "============ [START] CREATE NEW PAGES ============="

hexo clean & hexo g & hexo d
timeout /t 5

echo "============ [END] CREATE NEW PAGES ============="

pause