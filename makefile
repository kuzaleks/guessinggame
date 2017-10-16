
all: README.md

README.md:
	echo "# Guessing Game Project" > README.md
	echo "## Created `date`" >> README.md
	echo "## guessinggame.sh consists of \
	`wc -l guessinggame.sh | cut -f7 -d' '` lines in total" >> README.md

clean:
	rm README.md
