#!/usr/bin/env python3

import click
from pathlib import Path


@click.command()
@click.argument("name", nargs=1, type=click.STRING)
def create_module(name: str):
    """
    This is a utility script. It allows you to quickly create the typical
    directory structure for a Terraform module. You can supply a path made
    up of multiple directories to create a tree.
    """
    # Sanitize name
    name = name.lower()

    # Get the repository's absolute path
    dir_root: Path = Path(__file__).parent.absolute().parent.absolute()

    # Get modules directory absolute path
    dir_modules: Path = dir_root / "modules"

    try:
        if not dir_modules.exists():
            raise FileNotFoundError
    except FileNotFoundError:
        click.echo(f'"{dir_modules.name}" directory does not exist!')
        exit(1)

    # Get new module's absolute path
    dir_module: Path = dir_modules / name

    # Create new module
    dir_module.mkdir(parents=True, exist_ok=True)

    file_list = ["main", "vars", "outputs", "data"]
    for file in file_list:
        file_path: Path = dir_module / f"{file}.tf"
        file_path.touch()

    click.echo(f'Created module named "{name}" at {dir_module.absolute()}')


if __name__ == "__main__":
    create_module()
