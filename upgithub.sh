  GNU nano 2.4.2             File: upgithub.sh                                  

git add .
echo "files added"
git commit -m "$(date)"
echo "commit comment entered using date command"
git push origin master
