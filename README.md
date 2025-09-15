# Pipenv for Github Actions

## Use pipenv commands in your GitHub Actions Workflow


Running python 12.x

### Install dependencies and run custom command:

```yaml
  install-test:
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v2 # Checking out the repo

    - name: Install dependencies
      uses: kennedyshead/github-action-pipenv@v1.0
      with:
        command: install -d # Install all dependencies, including development ones
    
    - name: Test
      uses: kennedyshead/github-action-pipenv@v1.0
      with:
        command: run test # Run custom `test` command defined in the `[scripts]` block of Pipfile
```
