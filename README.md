# scaffold

[![Python Application Test with Github Actions](https://github.com/aycandv/scaffold/actions/workflows/main.yml/badge.svg)](https://github.com/aycandv/scaffold/actions/workflows/main.yml)

This is a scaffold for Python

## Workflow

### Create a Virtual Environment

```bash
python -m venv ~/.scaffold && \
source ~/.scaffold/bin/activate
```

### Install Dependencies

```bash
make install
```

### Lint and Format

After modifying Python code, you can lint and format your code using the following command

1. Linting
 
```bash
make lint
```

2. Formatting
```bash
make format
```

### Test

Run the following command to test and see covarage of your code. (You need to modify Makefile as you create new Python files)

```bash
make test
```
