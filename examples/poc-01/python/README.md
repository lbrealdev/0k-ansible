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
export SET_ENV="default"
```

List settings properties defined:
```shell
dynaconf -i config.settings list
```

Export dynamic variable with `envvar_prefix`:
```shell
export MYAPP_DYNAMIC_ENV="<env>"
```

Unset dynamic variable:
```shell
unset MYAPP_DYNAMIC_ENV
```
