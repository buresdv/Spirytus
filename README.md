# Turbo-fast Drop-in Reimplementation of some Homebrew Logic

This repository is a part of the wider [Cork](https://github.com/buresdv/Cork) app.

## Motivation

Homebrew itself is not fast enough for Cork. Loading packages and pins took multiple seconds using vanilla Homebrew. This is why I gradually started reimplementing select Homebrew logic in Swift, for massive gains.

|                 | Vanilla | Spirytus | Gains |
|-----------------|---------|----------|-------|
| Package Loading | 3s      | 0,27s    | 91%   |
| Pins Loading    | 2s      | 0,1s     | 95%   |
| Package Pinning | 1,7s    | >0,1s    | <94%  |

## License

Unless otherwise specified or given my explicit permission, this software is licensed under [AGPLv3](https://www.gnu.org/licenses/agpl-3.0.html), with additional provisions of the [Commons Clause](https://commonsclause.com) license.
