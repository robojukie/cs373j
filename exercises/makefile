FILES :=

#    SingletonPattern
#    FactoryMethodPattern
#    AbstractFactoryPattern

%.class: %.java
	javac -Xlint $<

%.javax: %.class
	java -ea $(patsubst %.class,%,$<)

clean:
	rm -f *.class

test: $(FILES:=.javax)
