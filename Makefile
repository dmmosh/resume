resume: resume.tex
	git checkout main
	pdflatex resume.tex
	git add Makefile resume.aux resume.log resume.out resume.tex
	git commit -m "updated resume supplementary files"
	git push

	git stash -u # stash resume.pdf (untracked file)

	git checkout gh-page
	ls
	rm resume.pdf
	git stash apply
	git add resume.pdf
	git commit -m "updated resume"
	git push
	git checkout main
