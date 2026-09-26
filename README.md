# The Unbearable Notation of Logic

**Florian Lengyel**

[Read the manuscript](The-Unbearable-Notation-of-Logic.pdf) · [LaTeX source](The-Unbearable-Notation-of-Logic.tex)

An exposition of first-order syntax and semantics through categorical structure and an `@` calculus for evaluation and satisfaction.

Terms, substitutions, assignments, evaluations, and satisfaction relations have different types. The manuscript makes those types explicit, develops their composition laws, and expresses the corresponding calculations with a prefix/postfix notation. Typed commutative diagrams accompany the calculations.

## The notation

The symbol `@` denotes the current assignment. Its position distinguishes two operations:

| Expression | Meaning |
| --- | --- |
| $@\,t$ | The value of the term $t$ under the assignment. |
| $\varphi\,@$ | The assertion that the formula $\varphi$ is satisfied under the assignment. |

For an element $c$, the expression $@\vert_c^x$ updates the assignment at $x$. For a term $s$, the expression $\vert_s^x t$ substitutes $s$ for $x$ in $t$. Their compatibility is the sliding identity

$$
\bigl(@\vert_{@\,s}^{x}\bigr)t
=@\bigl(\vert_s^{x}t\bigr).
$$

The subscript on the left is the element obtained by evaluating $s$; the subscript on the right is the term $s$ itself. Categorically, this identity expresses the compatibility of Kleisli substitution with the Eilenberg–Moore algebra interpreting terms.

## Contents

| Sections | Topics |
| --- | --- |
| 1–8 | Categorical vocabulary; first-order languages; the term monad; Kleisli substitution; Eilenberg–Moore algebras; assignments; evaluation; satisfaction; the `@` calculus. |
| 9 | Došen–Petrić occurrence-indexed substitution, finite occurrence profiles, and the routing of repeated arguments. |
| 10–11 | Expansion by names for the elements of a structure and assignments as substitutions by ground terms. |
| 12 | Functorial models, Lawvere theories, classifying toposes, and generalized points. |
| 13 | Ultraproducts, Łoś's theorem, stalks, satisfaction loci, and the relation with condensed mathematics. |
| 14 | Conclusion. |
| Appendix A | Feferman's arithmetization conventions: numbers, numerals, codes, represented substitution, dotted quotation, provability, and parameterized consistency formulas. |

Appendix A.5 connects occurrence-indexed substitution with arithmetized substitution. For closed inserted terms, substitution on codes factors through a template with one distinct hole per occurrence. The occurrence map supplies the repeated and reordered arguments. Composition of templates recovers the fibrewise occurrence map from Section 9.

The appendix distinguishes Feferman's conventions from the explicit hole grammar and sample Gödel numbering introduced for the exposition. References to the original papers and relevant books are included in the manuscript.

## Building the PDF

A LaTeX installation providing `pdflatex` and `latexmk` is required. The packages used by the manuscript are declared in the source. The supplied PDF was compiled with TeX Live 2023.

From the repository directory, run:

```sh
latexmk -pdf -interaction=nonstopmode -halt-on-error The-Unbearable-Notation-of-Logic.tex
```

This command also works in Windows PowerShell when the LaTeX tools are on `PATH`.

With GNU Make in WSL, Linux, or macOS, the supplied Makefile provides:

```sh
make
```

The Makefile places intermediate files in `build/` and copies the resulting PDF to the repository root. Run `make clean` to remove intermediate files.

The manuscript is contained in one `.tex` file, including the bibliography and TikZ diagrams. No external figures or bibliography processor are required.

## Corrections and discussion

Corrections, alternative formulations, and worked examples are welcome through issues or pull requests. Identify the section, equation, or proposition concerned and the commit or manuscript version being discussed. For a mathematical correction, include the proposed replacement and its justification.

## Citation

Florian Lengyel, *The Unbearable Notation of Logic*, 2026. Please specify the commit or release used when referring to a particular version.

```bibtex
@misc{lengyel2026unbearable,
  author = {Florian Lengyel},
  title  = {The Unbearable Notation of Logic},
  year   = {2026},
  url    = {https://github.com/flengyel/The_Unbearable_Notation_Of_Logic}
}
```

## License

Copyright © 2026 Florian Lengyel.

The manuscript, its LaTeX source, and the accompanying documentation
are licensed under the
[Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/).
See [LICENSE](LICENSE) for the full terms.