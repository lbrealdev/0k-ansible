# Python Dynaconf

### Use

Run `env.py` script:
```shell
python env.py
```

Environment switcher:
```shell
export SET_ENV="<environment>"
```

Return to the **default** environment:
```shell
export SET_ENV=""

export SET_ENV="default"
```

List settings properties defined:
```shell
dynaconf -i config.settings list
```
