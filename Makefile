SRC := src
RSC := rsc
TGT := .

SOURCES := $(wildcard $(SRC)/*.md)
TARGETS := $(patsubst $(SRC)/%.md, $(TGT)/%.html, $(SOURCES))

website: $(TARGETS)


$(TGT)/%.html: $(SRC)/%.md
	pandoc -s $< -c $(RSC)/style.css -o ./$@

clean:
	rm -v $(TGT)/*.html
