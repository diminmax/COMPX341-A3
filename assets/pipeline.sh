
if [ $# != 1 ]; then
    echo "plesea enter a commit message: "
    exit
   
else
    commit_msg="$1"
fi

echo "<1> prepare env"
if npm install; then
    echo "install successful"
else
    echo "uninstall"
    exit
fi

#if apllication has issues, we can catch error here, and exit pipeline
echo "<2> build (compiling the application)"
if npm run build; then
    echo "build successful"
else
    echo "Build failed please fixed error"
    exit
fi

#fist update sh script (push change to git so we need not open app, comment npm run start)
#echo "<3> start application"
#npm run start

echo "<git add .> add all changes we need to commit"
git add .

echo "<git commit -m > commit to github with msg"
git commit -m "$1"

echo "<git push> push to my github"
git push


