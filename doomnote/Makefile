.PHONY: all

all: ntangle.exe
	@ntangle README.org

%.exe:
	@if ! command -v $(basename $@) >/dev/null 2>&1; then \
		echo "Error: '$(basename $@)' binary not found."; \
		exit 1; \
	fi
