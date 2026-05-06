# spritekit-lua

`spritekit-lua` explores game engines with a small Lua codebase and local fixtures. The technical goal is to drive tile animation timelines, sprite sheets, and collision masks.

## Use Case

I want this repository to be useful as a quick reading exercise: fixtures first, implementation second, verifier last.

## Spritekit Lua Review Notes

The first comparison I would make is `visibility` against `turn pressure` because it shows where the rule is most opinionated.

## Highlights

- `fixtures/domain_review.csv` adds cases for turn pressure and map entropy.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/spritekit-lua-walkthrough.md` walks through the case spread.
- The Lua code includes a review path for `visibility` and `turn pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Code Layout

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `turn pressure`, `map entropy`, `collision risk`, and `visibility`.

The added Lua path is deliberately direct, with fixtures doing most of the explaining.

## Run The Check

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Regression Path

The check exercises the source code and the review fixture. `recovery` is the high score at 226; `baseline` is the low score at 113.

## Future Work

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
