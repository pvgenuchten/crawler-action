# Crawler action

A github action to convert [mcf]() files in a repository to iso metadata xml

# Required input and output arguments.

- input folder: '.'
- output-folder: 'exp'
  
# An example of how to use your action in a workflow.

```
name: mcf to iso

on:
  - push
  - delete

jobs:
  mcf_to_iso:
    runs-on: ubuntu-latest
    name: A conversion of mcf to iso
    steps:
      - name: checkout
        uses: actions/checkout@v4
        with:
          fetch-depth: 2
          path: '.'
      - run: git checkout HEAD^
      - name: convert
        id: convert
        uses: pvgenuchten/crawler-action@v0.1
        with:
          folder-input: './portals'
          folder-output: 'out'
```
