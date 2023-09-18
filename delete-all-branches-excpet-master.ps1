function Delete-All-Branches-Except-Master {
	git branch | Select-String -NotMatch -Pattern "master" | %{ git branch -D $_.ToString().Trim() }
}
