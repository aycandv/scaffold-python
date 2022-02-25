TARGET_FILES=hello.py

install:
	pip install --upgrade pip && \
		pip install -r requirements.txt

format:
	autoflake --in-place --remove-all-unused-imports \
		--remove-unused-variables --expand-star-imports \
		--ignore-init-module-imports \
			hello.py && \
	isort --filter-files $(TARGET_FILES) && \
	black --line-length=120 $(TARGET_FILES)

lint:
	- pylint --disable=R0911,R0912,C0114,W1514 \
		--max-line-length=120  --exit-zero \
			$(TARGET_FILES)

test:
	python -m pytest -vv --cov=hello test_hello.py

all: install lint format test
