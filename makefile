all: README.md

README.md :
	echo "# Guessing Game - Course Project" > README.md
	echo "This README file was created on: " >> README.md
	date >> README.md
	echo "" >> README.md
	echo "The number of lines in guessinggame.sh is:" >> README.md
	cat guessinggame.sh | wc -l >> README.md
	
clean:
	rm README.md
