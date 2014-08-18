NAME = summer2014
TARGETPDF = $(NAME).pdf

CONFIG = $(NAME).yaml
REFILES = 00abstract.re \
	  01intro.re \
	  02tools.re \
	  03devices.re \
	  04inpractice.re \
	  99concl.re

# command
PDFMAKE :=  review-pdfmaker

$(TARGETPDF): $(CONFIG) $(REFILES)
	rm $(TARGETPDF) || echo "no pdf exists: clean build"
	$(PDFMAKE) $(CONFIG)

clean:
	rm $(TARGETPDF)

open: $(TARGETPDF)
	open $(TARGETPDF)
