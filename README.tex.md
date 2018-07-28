# The Chaos Game in Processing

In mathematics, an iterated function is one where the output becomes the next input in a recursive manner. Take some function $f(x)$, for example. Then the sequence $x, f(x), f(f(x)), \ldots$ is named the orbit of $x$ for $f$. It's clear to see that each output becomes the proceeding input in the next iteration.

To play the Chaos Game, one draws a triangle and labels its veritcies 1, 2, and 3, respectively. Then, at random, you pick some point within the triangle's bounds, and draw a dot there. Now, imagine a peculiar function $f(x)$, where $x$ represents some ordered pair. Then the function rule is as follows:

<p align="center">$f(x) := \textrm{Pick a random vertex, and output } f(x) \textrm{ to be a new ordered pair halfway between the input } x \text{ and that random vertex.}$

