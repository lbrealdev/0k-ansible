# justfile recipes

@pre-commit:
  pre-commit install

@install:
  cargo run -- "0k-linux"
