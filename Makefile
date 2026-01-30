resume: resume.tex
	git checkout main
	pdflatex --jobname=Dmytro_Moshkovskyi_resume resume.tex
	git add .
	git reset -- Dmytro_Moshkovskyi_resume.pdf
	git commit -m "updated resume supplementary files"
	git push

	git stash -u # stash Dmytro_Moshkovskyi_resume.pdf (untracked file)

	git checkout gh-page
	ls
	rm Dmytro_Moshkovskyi_resume.pdf
	git stash apply
	git add Dmytro_Moshkovskyi_resume.pdf
	git commit -m "updated resume"
	git push
	git checkout main
