#!/bin/sh



clear_commit_history(){
	echo "Clear Commit History"

	# git reset HEAD^
	# git pull

	git checkout --orphan second
	git add -A
	git commit -m "[CVIDG][$PROJECT_NAME][Initial commit] codebeamer_datamap_daily_cache-[$(date "+%Y-%m-%d %H:%M:%S")]"
	git branch -D main
	git branch -m main
	git push -f origin main
	git push --set-upstream origin main
	echo "Finish : Clear Commit history & Commit"
}


# RESULT=$(git push 2>&1)

# echo "$RESULT"

# echo "\n"


if [[ "$RESULT" == *remote* && "$RESULT" == *push* ]];then
    clear_commit_history
fi

clear_commit_history
