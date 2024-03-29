"""Main config module"""

from dynaconf import Dynaconf, Validator

settings = Dynaconf(
    # Default environment variables prefix. 
    envvar_prefix="MYAPP",
    # Source configuration files.
    settings_files=['settings.toml', '.secrets.toml'],
    environments=["dev", "pre", "pro"],
    env_switcher="SET_ENV",
    # The script will not work if the variables defined in the Validator class are not defined. 
    validators=[
        Validator("ENV", must_exist=True, len_min=3),
        # Validates that DYNAMIC_ENV is not equal to an empty string
        Validator("DYNAMIC_ENV", ne=""),
    ]
)

# `envvar_prefix` = export envvars with `export DYNACONF_FOO=bar`.
# `settings_files` = Load these files in the order.
