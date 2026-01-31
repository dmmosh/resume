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
	rm -f Dmytro_Moshkovskyi_resume.pdf
	git rm --cached Dmytro_Moshkovskyi_resume.pdf
	git checkout --ours Dmytro_Moshkovskyi_resume.pdf
	pdftoppm -png Dmytro_Moshkovskyi_resume.pdf Dmytro_Moshkovskyi_resume_img
	git add .
	git commit -m "updated resume"
	git push
	git checkout main
