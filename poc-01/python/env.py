from config import settings

print()
print(f"Dynaconf environment: {settings.ENV_FOR_DYNACONF}")
print(f"Dynaconf main environment: {settings.MAIN_ENV_FOR_DYNACONF}")
print(f"Dynaconf default environment: {settings.DEFAULT_ENV_FOR_DYNACONF}")
print(f"Dynaconf root path: {settings.ROOT_PATH_FOR_DYNACONF}")
print(f"Dynaconf settings file: {settings.SETTINGS_FILE_FOR_DYNACONF}")
print()
print(f"Static variable defined for '{settings.ENV_FOR_DYNACONF}' environment: {settings.ENV}")
print(f"Dynamic variable defined for '{settings.ENV_FOR_DYNACONF}' environment: {settings.get("DYNAMIC_ENV", default="undefined")}")
print()
