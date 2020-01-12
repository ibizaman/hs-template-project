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
