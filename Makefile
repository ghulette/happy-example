all: Calc

Tokens.hs : Tokens.x
	alex Tokens.x

Grammar.hs : Grammar.y
	happy Grammar.y
    
Calc : Tokens.hs Grammar.hs Calc.hs
	ghc --make Calc
    
clean:
	rm -f Calc Grammar.hs Tokens.hs *.o *.hi
    