# jupyter-bootstrap

aka IPython Notebook Data Science Bootstrap Boilerplate Project Skeleton. I have
no idea what to call this thing.

Austin G. Davis-Richardson

A project skeleton for data analysis projects using bootstrap. Includes
boilerplate for writing external modules and testing.

## Motivation

I like ~~IPython~~ Jupyter notebook for interactive computing/data analysis but
I find it difficult to write maintainable code. This is an effort to promote
writing re-usable code as seperate Python modules, with a decent testing
framework in place, and also verify that notebooks build without error (I guess
this is a form of integration testing).

## Get Started

Install dependencies

```sh
# create and activate a new virtual environment
pyenv virtualenv 2.7.9 $PWD
pyenv activate $PWD

# install dependencies
pip install -r requirements.txt

# start notebook
ipython notebook

```

Write functions common to all notebooks in `lib/common.py` to start. Use
doctests for testing.

## Testing

`nosetests --with-doctests`

## Building Notebooks

TODO: I would like to automatically build all notebooks (during testing?) and
fail if a notebook doesn't build.

<kbd>boop</kbd>
