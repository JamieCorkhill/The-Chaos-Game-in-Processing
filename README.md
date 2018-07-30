# The Chaos Game in Processing

In mathematics, an iterated function is one where the output becomes the next input in a recursive manner. Take some function <img src="/tex/7997339883ac20f551e7f35efff0a2b9.svg?invert_in_darkmode&sanitize=true" align=middle width=31.99783454999999pt height=24.65753399999998pt/>, for example. Then the sequence <img src="/tex/c53e7cfc8c94b14ef327af43f7a46db6.svg?invert_in_darkmode&sanitize=true" align=middle width=137.08914284999997pt height=24.65753399999998pt/> is named the orbit of <img src="/tex/332cc365a4987aacce0ead01b8bdcc0b.svg?invert_in_darkmode&sanitize=true" align=middle width=9.39498779999999pt height=14.15524440000002pt/> for <img src="/tex/190083ef7a1625fbc75f243cffb9c96d.svg?invert_in_darkmode&sanitize=true" align=middle width=9.81741584999999pt height=22.831056599999986pt/>. It's clear to see that each output becomes the proceeding input in the next iteration.

To play the Chaos Game, one draws a triangle and labels its veritcies 1, 2, and 3, respectively. Then, at random, you pick some point within the triangle's bounds, and draw a dot there. Now, imagine a peculiar function <img src="/tex/7997339883ac20f551e7f35efff0a2b9.svg?invert_in_darkmode&sanitize=true" align=middle width=31.99783454999999pt height=24.65753399999998pt/>, where <img src="/tex/332cc365a4987aacce0ead01b8bdcc0b.svg?invert_in_darkmode&sanitize=true" align=middle width=9.39498779999999pt height=14.15524440000002pt/> represents some ordered pair. Then the function rule is as follows:

<p align="center"><img src="/tex/3884eec420abe6c41a1078cdb7807f38.svg?invert_in_darkmode&sanitize=true" align=middle width=917.7756901499998pt height=24.65753399999998pt/>

Writing a more rigorous defintion, we have:

Let <img src="/tex/10f49750fa24d7a0bde2996500d77128.svg?invert_in_darkmode&sanitize=true" align=middle width=83.60727374999999pt height=24.65753399999998pt/> be some ordered pair. Assume that a vertex <img src="/tex/1ce3d734524c00bc89a5196c291e8587.svg?invert_in_darkmode&sanitize=true" align=middle width=38.63779424999999pt height=24.65753399999998pt/> is chosen at random. Then <img src="/tex/7997339883ac20f551e7f35efff0a2b9.svg?invert_in_darkmode&sanitize=true" align=middle width=31.99783454999999pt height=24.65753399999998pt/> shall output the ordered pair <img src="/tex/e2b2f194fbe03ab3bf2e08870cb188b6.svg?invert_in_darkmode&sanitize=true" align=middle width=96.92815934999999pt height=30.648287999999997pt/>
  
In other words, <img src="/tex/7997339883ac20f551e7f35efff0a2b9.svg?invert_in_darkmode&sanitize=true" align=middle width=31.99783454999999pt height=24.65753399999998pt/> just outputs a new ordered pair halfway between the input ordered pair, and the randomly chosen vertex. Following this rule, it is clear to see that the first point we chose inside the triangle is equivalent to <img src="/tex/332cc365a4987aacce0ead01b8bdcc0b.svg?invert_in_darkmode&sanitize=true" align=middle width=9.39498779999999pt height=14.15524440000002pt/> in the sequence above. This is called the seed. After choosing that point, we randomly pick a vertex (by randomly picking the number 1, 2, or 3) as per the function defintion, and draw a new dot halfway between the current dot and that random vertex. This iteratively becomes the orbit of the seed when the ordered pair the function outputs becomes its new input the next time around.

The similarites between the function rule we defined above, and the mechnaical proccess by which the Chaos Game is performed now become clear, and the recurisive nature of this algorithim becomes plain to see.
 
Due to how tedious this game becomes as the number of iterations becomes infinitely larger, a computer is well tasked to perform the simulation. Most people assume that eventually, the triangle will just become completely filled in, with each pixel within it's bounds eventually becoming an output of <img src="/tex/7997339883ac20f551e7f35efff0a2b9.svg?invert_in_darkmode&sanitize=true" align=middle width=31.99783454999999pt height=24.65753399999998pt/>. That is not, however the case.

In fact, after 500,000 iterations, this is the result we attain:

<img src="/Sierpinski Triangle.png" alt="Result after 500,000 iterations."/>

Many will recongnize this as the famous fractal the Sierpinski Triangle.

