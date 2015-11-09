FILES :=

#    Store1            \
#    Store2            \
#    Store3            \
#    Store4            \
#    Store5            \
#    Store6            \
#    MethodOverriding1 \
#    MethodOverriding2 \
#    Store7            \
#    Reflection        \
#    Store8            \
#    Store9

%.class: %.java
	javac -Xlint $<

%.javax: %.class
	java -ea $(patsubst %.class,%,$<)

clean:
	rm -f *.class

test: $(FILES:=.javax)
