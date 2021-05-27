LABELS = $(wildcard labels/*.yml)
GENERATED = \
	    labels.json \
	    README.md \
	    single-value-axes.md \
	    multi-value-axes.md

all: README.md

README.md: templates/README.md.in single-value-axes.md multi-value-axes.md
	sh scripts/build-readme.sh $< > $@ || { rm -f $@; exit 1; }

labels.json: scripts/extract-labels.sh $(LABELS)
	sh scripts/extract-labels.sh $(LABELS) > $@ || { rm -f $@; exit 1; }

single-value-axes.md: scripts/extract-docs.sh $(LABELS)
	sh scripts/extract-docs.sh $(LABELS) > $@ || { rm -f $@; exit 1; }

multi-value-axes.md: scripts/extract-docs.sh $(LABELS)
	sh scripts/extract-docs.sh -m $(LABELS) > $@ || { rm -f $@; exit 1; }

clean:
	rm -f $(GENERATED)

.INTERMEDIATE: multi-value-axes.md single-value-axes.md
