# workshop-jupyter-convert
Convert workshops to jupyter notebook

###Prerquisites
Have [jupytext](https://jupytext.readthedocs.io/en/latest/install.html) installed

### Usage
#### Option 1
Convert workshop README.md to jupyter notebook containing all the text as well as commands and tests
```
cat /path/to/your/workshop/README.md | scripts/md-to-jupyter-prepare.sh > README_ready.md
jupytext --to notebook README_ready.md
```
This created README_ready.ipynb in current working directory
#### Option 2
Convert workshop README.md to jupyter notebook without any text, only bash codes and tests
```
cat /path/to/your/workshop/README.md | md-to-bash-prepare-ipynb.sh > workshop.sh
jupytext --to notebook workshop.sh
```
This creates a jupyter notebook containig only bash code blocks and tests from original workshop README file.

### Limitations
Resulting jupyter notebook needs to be moved to workshop directory in order to properly work as it depends on scripts located in the workshop repo.
