function Delete-Already-Merged-Branches {
	git for-each-ref --format '%(refname:short)' refs/heads --merged | ForEach-Object { If("master" -notcontains $_) { git branch $_ -d } }
}
