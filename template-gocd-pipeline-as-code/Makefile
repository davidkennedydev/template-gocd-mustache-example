GOCD_FILE ?= ../build.gocd.yaml
PIPELINES ?= ../gocd/pipelines.yaml
ENVIRONMENTS ?= ../gocd/environments.yaml

.PHONY: pipelines

all: pipelines $(HOME)/bin/mustache
	cat $(ENVIRONMENTS) > $(GOCD_FILE)
	mustache $(PIPELINES) ./templates/pipelines.mustache >> $(GOCD_FILE)
	echo "GoCD build file created on $(GOCD_FILE)"

pipelines: templates/pipelines.mustache
	echo "pipelines:" > $<
	echo "{{#project}}" >> $<
	cat ./templates/*_pipeline.mustache.yaml >> $<
	echo "{{/project}}" >> $<

templates/pipelines.mustache:
	touch $@

$(HOME)/bin/mustache: /usr/bin/gem
	gem install --user-install mustache

/usr/bin/gem:
	@echo "[GOCD TEMPLATES] Ruby gems not found..."
	@echo "[GOCD TEMPLATES] Trying install rubygems with DNF"
	sudo dnf install rubygems -y

clean:
	rm -f templates/pipelines.mustache
	touch templates/pipelines.mustache
	rm -f $(GOCD_FILE)

