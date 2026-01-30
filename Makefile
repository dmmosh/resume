resume: resume.tex
	git checkout main
	pdflatex resume.tex
	git add resume.pdf
	git checkout gh-page
	git commit -m "updated resume"
	git push
	git checkout main
