all: README.md

README.md:
	echo "## Bash, Make, Git, and Github"
	echo "The date and time at which make was run: " >> README.md
	date >> README.md
	echo "\nNumber of lines of code contained in guessinggame.sh: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md