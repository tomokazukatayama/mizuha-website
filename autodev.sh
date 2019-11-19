git fetch
code .
while :
do
	hugo server
	hugo --minify
	firebase deploy
	git add -A
	git commit -m "manually update"
	git push
done
