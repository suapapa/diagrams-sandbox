SUBDIRS := diagrams-front diagrams-back/sandbox diagrams-back/server

all: $(SUBDIRS)
	mkdir -p out
	cp -r diagrams-front/dist out/
	cp diagrams-back/server/server out/
	cp diagrams-back/server/diagrams_nodes.json out/ 

$(SUBDIRS):
	$(MAKE) -C $@

.PHONY: all $(SUBDIRS)
