# Setup Prolog

[![Stand With Ukraine](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/badges/StandWithUkraine.svg)](https://stand-with-ukraine.pp.ua)
![GitHub release](https://img.shields.io/github/v/release/fabasoad/setup-prolog-action?include_prereleases)
![functional-tests](https://github.com/fabasoad/setup-prolog-action/actions/workflows/functional-tests.yml/badge.svg)
![security](https://github.com/fabasoad/setup-prolog-action/actions/workflows/security.yml/badge.svg)
![linting](https://github.com/fabasoad/setup-prolog-action/actions/workflows/linting.yml/badge.svg)

This action sets up a [swipl](https://www.swi-prolog.org/) (Prolog programming
language).

## Supported OS

<!-- prettier-ignore-start -->
| OS      |                    |
|---------|--------------------|
| Windows | :x:                |
| Linux   | :white_check_mark: |
| macOS   | :white_check_mark: |
<!-- prettier-ignore-end -->

## Inputs

```yaml
- uses: fabasoad/setup-prolog-action@v1
  with:
    # (Optional) If "true" it installs swipl even if it is already installed on
    # a runner. Otherwise, skips installation. Defaults to false.
    force: "false"
```

## Outputs

<!-- prettier-ignore-start -->
| Name      | Description                        | Example |
|-----------|------------------------------------|---------|
| installed | Whether swipl was installed or not | `true`  |
<!-- prettier-ignore-end -->

## Example usage

1. Create `hello-world.pl` with the following content:

   ```text
   main :- write('Hello World!'), nl.
   ```

2. Create and run the following workflow:

   ```yaml
   name: Setup Prolog

   on: push

   jobs:
     setup:
       name: Setup
       runs-on: ubuntu-latest
       steps:
         - uses: actions/checkout@v4
         - uses: fabasoad/setup-prolog-action@v1
         - name: Run script
           run: swipl -s hello-world.pl -g main -t halt
   ```

3. See the result:

   ```text
   Run swipl -s hello-world.pl -g main -t halt
   Hello World!
   ```

## Contributions

![Alt](https://repobeats.axiom.co/api/embed/db8e472c6329d380c4548fb3ccb9feec5e52242e.svg "Repobeats analytics image")
