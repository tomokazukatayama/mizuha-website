git fetch
code .
while :
do
	hugo server
	echo ""
	echo ""
	echo "Starting Deploy"
	hugo --minify
	firebase deploy
	echo "Saving Changes to GitHub"
	git add -A
	git commit -m "manually update"
	git push
done
