# Review Journal

This journal records the domain cases that matter before widening the public API.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its game engines focus without claiming live deployment or external usage.

## Cases

- `baseline`: `turn pressure`, score 113, lane `watch`
- `stress`: `map entropy`, score 182, lane `ship`
- `edge`: `collision risk`, score 131, lane `watch`
- `recovery`: `visibility`, score 226, lane `ship`
- `stale`: `turn pressure`, score 125, lane `watch`

## Note

A future change should add new cases before it changes the scoring rule.
