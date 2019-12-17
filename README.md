# ML with TensorFlow - 2nd Edition

## Setting up the environment (Mac & Linux; not sure about windows yet)

### Using docker

#### Building the image

```shell
./build_environment.sh
```

#### Running the notebook

```shell
./run_environment.sh
```

### Using your local python

#### Building the environment

We're using the wonderful [pipenv](https://pipenv.kennethreitz.org/en/stable/) to manage dependencies.

```shell
$ pip install -U --user https://github.com/pypa/pipenv/archive/3e63f078adcdd0a053e4af47b0849bff0018f899.zip

# Assuming ~/.local/bin is in your $PATH, if not you should add it.
$ pipenv install
```

#### Running the notebook

```shell
$ pipenv run jupyter notebook
```
