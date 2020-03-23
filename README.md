# Nix Flask

Developing a Flask application with Nix

# Enter environment

```sh
nix-shell
```

# Run server via `python` (success)

```sh
FLASK_APP=nix_flask/app.py FLASK_ENV=development \
    python nix_flask/app.py
```

request:
```sh
curl localhost:5000
```

response:
```
{
    "hello": "world"
}
```

# Run server via `flask run` (failure)

```sh
FLASK_APP=nix_flask/app.py FLASK_ENV=development \
    flask run
```

request:
```sh
curl localhost:5000
```

response:
```
...
Traceback (most recent call last):
  File "/nix/store/...-python3.7-Flask-1.0.3/lib/python3.7/site-packages/flask/cli.py", line 236, in locate_app
    __import__(module_name)
  File "/path/to/nix-flask/nix_flask/app.py", line 2, in <module>
    from flask_restful import Resource, Api
ModuleNotFoundError: No module named 'flask_restful'
```
