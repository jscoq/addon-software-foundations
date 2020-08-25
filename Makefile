# Notice: DeepSpec/sfdev is a private repository
REPO = git@github.com:DeepSpec/sfdev
TAG = jscoq
WORKDIR = workdir
SUBDIRS = common lf plf

.PHONY: all get

all: $(WORKDIR)
	dune build

get: $(WORKDIR)

$(WORKDIR):
	git clone --no-checkout --filter=blob:limit=1m --depth=1 -b $(TAG) $(REPO) $(WORKDIR)
	( cd $(WORKDIR) && git checkout $(TAG) $(SUBDIRS) )
	cp -r dune-files/ $(WORKDIR)

