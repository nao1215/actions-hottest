## actions-hottest - GitHub Actions for hottest
:octocat: GitHub Action for [nao1215/hottest](https://github.com/nao1215/hottest)

### Usage: sample workflow
You should set `args` argument same as `go test` command.
```yml
name: SampleTest

on:
  push:

jobs:
  sample_test:
    name: sample test

    strategy:
      matrix:
        platform: [ubuntu-latest]

    runs-on: ${{ matrix.platform }}

    steps:
      - uses: actions/checkout@v4

      - uses: actions/setup-go@v4
        with:
          go-version: "1"
          check-latest: true

      - uses: nao1215/actions-hottest@v0
        with:
          # This argument is same as `go test` command.
          args: '-cover -coverpkg=./... -coverprofile=coverage.out ./...'
```

### Result
#### Success case
![success](doc/image/success.png)

#### Failure case
![failure](doc/image/fail.png)
