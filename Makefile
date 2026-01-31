resume: resume.tex
	git stash clear
	git checkout main
	pdflatex --jobname=Dmytro_Moshkovskyi_resume resume.tex
	git add .
	git restore --staged Dmytro_Moshkovskyi_resume.pdf

	git commit -m "updated resume supplementary files"
	git push

	git stash -u  # stash Dmytro_Moshkovskyi_resume.pdf (untracked file)

	git checkout gh-page
#	git merge --squash --strategy-option=theirs stash

	git stash apply 
	git checkout --theirs -- Dmytro_Moshkovskyi_resume.pdf
	pdftoppm -png Dmytro_Moshkovskyi_resume.pdf Dmytro_Moshkovskyi_resume_img
	git add .
	git commit -m "updated resume"
	git push
	git checkout main
	git stash clear
