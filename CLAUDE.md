# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This repository is a research workspace for studying sequences in [OEIS](https://oeis.org/). Each file computes, verifies, or explores a specific OEIS sequence. The primary languages used are Ruby (151 files), Python (100 files), and PARI/GP (96 files).

## Running Code

```bash
# PARI/GP — run interactively
gp

# PARI/GP — load a file in the PARI session
\r path/to/file.gp

# PARI/GP — run from the terminal (outputs b-file to current directory)
gp < file.gp

# Ruby
ruby file.rb

# Python
python3 file.py
```

## File Naming Convention

Files follow the pattern `NNNNNN_VV.ext` where `NNNNNN` is the zero-padded OEIS sequence number (without the leading `A`) and `VV` is a two-digit version number starting at `01`. Example: `340295_01.gp` is the first version of sequence A340295.

## PARI/GP Style

- G.f. (ordinary generating function) template:
  ```pari
  my(N=66, x='x+O('x^N)); Vec(...)
  ```
- E.g.f. (exponential generating function) template:
  ```pari
  my(N=66, x='x+O('x^N)); Vec(serlaplace(...))
  ```
- Helper functions use lowercase names (e.g., `a354339(n)`, `a_vector(n)`).
- For recursive sequences, accumulate results in a vector rather than calling recursively each time — recursion is slow.
- Avoid using `N` as a variable name inside `.gp` files intended for `\r` loading; `N` is often already set interactively at the terminal.
- When verifying an alternative formula, keep both computations in the same file and print the equality check (e.g., `a(n) == b(n)`).
- `Vec(f)` returns coefficients in **descending** order; use `Vecrev` or `polcoef` when you need a specific coefficient.
- Set `default(realprecision, 1000)` when using trigonometric/exponential expressions that require high precision.

## Ruby Style

- Indent with 2 spaces.
- Use `{|block|}` style for short blocks, `do...end` for multiline.
- Iteration typically uses `.each`, `.map`, `n.times`, `(a..b).each`.
- Arrays are 1-indexed conceptually (prepend a dummy `0` element when mapping OEIS 1-based sequences to Ruby arrays).
- Output: use `p` for debugging/inspection, `print1`-style comma-separated output is done with `print` + manual joining or `puts`.
- Shared utilities live in `linear/linear.rb`; load with `require './linear'`.

## Python Style

- No imports beyond the standard library except where a specific library is needed (e.g., `from graphillion import GraphSet` in `graphillion/`).
- Functions follow the OEIS sequence name or a descriptive lowercase name.
- Output is printed with `print([...])` for a list of terms.
- Graphillion files begin with the comment `# Using graphillion`.

## Key Shared Libraries

- `linear/linear.rb` — Berlekamp-Massey algorithm, modular arithmetic (`mod_inv`, `chinese`), linear recurrence utilities (`polynomial`, `reccurence_form`).

## Important Notes from `src/README.md`

Code is also maintained in separate repositories organized by sequence number: `OEIS_00` through `OEIS_04`. This repo focuses on topic-based organization.

## PARI b-file Generation

Run `gp` from the directory containing the `.gp` file so that `write(...)` outputs to the current directory:

```bash
cd path/to/dir && gp < file.gp
```

Inside the file, use a local variable (not `N`) for the upper limit:

```pari
M=100;
v = v(M);
for(n=0, M, write("bXXXXXX.txt", n, " ", polcoef(v, n)))
```

## OEIS Edit Conventions

- When a value is undefined/missing: use `-1`, not `0` (easier to search).
- PARI function names: lowercase.
- G.f. description format: `Expansion of ...` or `Generating function Sum_{n >= 0} a(n)*x^n = ...` (not `G.f. ...`).
- Square array notation: `T(n,k)` preferred, though `A(n,k)` is acceptable.
- Caution: in interactive PARI, variables persist across commands — avoid reusing constant names between sessions.
