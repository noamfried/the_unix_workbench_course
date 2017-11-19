README.md: guessinggame.sh
        touch README.md
        echo "title : guessinggame" >> README.md
        echo $(shell date) >> README.md
        cat guessinggame.sh | wc -l >> README.md

clean:
        rm README.md
