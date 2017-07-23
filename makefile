all: README.md

README.md: guessinggame.sh
	echo "#Guessing Game Project" > README.md
	date >> README.md
	echo "Lines: " >> README.md
	cat guessinggame.sh | wc -l >> README.md


clean:
	rm README.md
