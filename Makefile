.DEFAULT_GOAL := help
help:  ## Show help message
	@grep -E '^[0-9a-zA-Z_-]+[[:blank:]]*:.*?## .*$$' $(MAKEFILE_LIST) | sort \
	| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[1;32m%-15s\033[0m %s\n", $$1, $$2}'

.PHONY: build-front
build-front:  ## Build frontend application
	$(MAKE) -C frontend build

clean:  ## Clean the project
	$(MAKE) -C frontend clean
