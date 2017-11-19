README.md: guessinggame.sh
        touch README.md
        echo "# the_unix_workbench_course " >> README.md
        echo $(shell date) >> README.md
        echo "<br>" >> README.md
        cat guessinggame.sh | wc -l >> README.md

clean:
        rm README.md
