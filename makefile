clean:
	cd examples; make clean
	@echo
	cd exercises; make clean

config:
	git config -l

init:
	touch README
	git init
	git add README
	git commit -m 'first commit'
	git remote add origin git@github.com:gpdowning/cs373j.git
	git push -u origin master

pull:
	@rsync -r -t -u -v --delete        \
    --include "Store1.java"            \
    --include "Store2.java"            \
    --include "Store3.java"            \
    --include "Store4.java"            \
    --include "Store5.java"            \
    --include "Store6.java"            \
    --include "MethodOverriding1.java" \
    --include "MethodOverriding2.java" \
    --include "Store7.java"            \
    --include "Reflection.java"        \
    --include "Store8.java"            \
    --include "Store9.java"            \
    --exclude "*"                      \
    ../../../examples/java/ examples
	@rsync -r -t -u -v --delete        \
    --include "SingletonPattern.java"  \
    --include "SingletonPatternT.java" \
    --exclude "*"                      \
    ../../../exercises/java/ exercises

push:
	make clean
	@echo
	git add .travis.yml
	git add examples
	git add exercises
	git add makefile
	git commit -m "another commit"
	git push
	git status

status:
	make clean
	@echo
	git branch
	git remote -v
	git status

test:
	cd examples; make test
	@echo
	cd exercises; make test

versions:
