.DEFAULT_GOAL := help
help:  ## Show help message
	@grep -E '^[0-9a-zA-Z_-]+[[:blank:]]*:.*?## .*$$' $(MAKEFILE_LIST) | sort \
	| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[1;32m%-15s\033[0m %s\n", $$1, $$2}'

.PHONY: build
build:  ## Build the frontend application
	@echo "Building the frontend application"
	elm make src/Main.elm

.PHONY: clean
clean:  ## Clean the project
	@echo "Cleaning the frontend project"
	rm -rf elm-stuff
	rm -rf index.html