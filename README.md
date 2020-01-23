# Template Haskell Project

This is my template haskell project to quickly get started.

It provides a sample application in `app/` and library in `src/` with
a small test in `test/`.

Building and running the app is done with:

```
stack build --haddock --haddock-deps
stack run
```

The haddock arguments are used to generate the documentation.

Running the tests is done with:

```
stack test
```

Looking at the documentation is best done through using hoogle, to do
that, run:

```
stack hoogle -- server --local --port=65000
```

Then point your browser at http://localhost:65000.

## Build code and reload daemons on change

A `modd` https://github.com/cortesi/modd config file is provided so
that all of the above commands are ran as necessary when a source file
changes. To use it, simply run the following in the project's root:

```
modd
```

## Language Server Protocol

A haskell-ide-engine https://github.com/haskell/haskell-ide-engine
config file `hie.yaml` is provided. The config file allows the LSP
server to work on test files, see
https://github.com/haskell/haskell-ide-engine/issues/1564#issuecomment-574760343.

## Github Action

This template project includes a github action workflow which builds
and tests the project as well as uploading the binary as a github
workflow artifact.

The github action workflow caches the haskell packages so the first
build will be quite slow as it will download ghc and all dependencies
while the following ones will be substantially faster. Initial tests
showed a first build took 6 minutes 30 seconds while the subsequent
ones took 1 minute 40 seconds.

To download it, follow these steps:
1. Go to the latest github action run
2. Download the artifact.
3. Unzip it with `unzip hs-template-project.zip`
4. set the executable permission bit with `chmod a+x hs-template-project/hs-template-project`
5. run it with `./hs-template-project/hs-template-project` and you should see printed `"Hello World"`.
