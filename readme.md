# python-data-science-skeleton [![Build Status](https://travis-ci.org/audy/python-data-science-skeleton.svg?branch=master)](https://travis-ci.org/audy/python-data-science-skeleton)

![Alchemist by Joseph Wright](http://i.imgur.com/157olho.jpg)

A handy project skeleton for data analysis projects using IPython notebook.
Includes boilerplate for writing external modules and testing.

Austin G. Davis-Richardson

## Motivation

I like ~~IPython~~ Jupyter notebook for interactive computing/data analysis but
I find it difficult to write maintainable code.

This is an effort to promote writing better, re-usable code as seperate Python
modules, with continuous integration using Travis, and also verify that
notebooks build without error (I guess this is a form of integration testing).
It is importanant that you never commit your notebooks to the master branch
while they're in a failing state.

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

To run unit tests:

```sh
nosetests --with-doctests
```

To build notebooks:

```sh
make # builds HTML by default
```

(Travis will do both of these things and fail if you commit a notebook in a non-functioning state)

## Building Notebooks

`make` will build any and all notebooks in `$PWD`.

## Contributing

Plz do! I :heart: pull requests.

## TODO

- [ ] Scrub output from notebooks on `master`. Possibly automate committing
  notebooks with output on a separate branch.
- [ ] Experiment with sending output from notebooks built by Travis (ideally on
  GitHub or IPyNbViewer).
- [ ] Add example Git hooks.
