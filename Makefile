SOURCES=$(shell find . -name "*.ipynb")
HTML=$(SOURCES:%.ipynb=%.html)

%.html: %.ipynb
	# convert $< to $@
	ipython nbconvert \
	  --ClearOutputPreprocessor.enabled=True \
	  --ExecutePreprocessor.enabled=True \
	  --to=html \
	  $<

html: $(HTML)

default: html

clean:
	rm -rf $(HTML) $(TEST)
