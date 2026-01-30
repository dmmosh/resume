resume: resume.tex
	git checkout main
	git add Makefile resume.aux resume.log resume.out
	git commit -m "updated resume supplementary files"
	git push
	pdflatex resume.tex
	git add resume.pdf
	git checkout gh-page
	git commit -m "updated resume"
	git push
	git checkout main
