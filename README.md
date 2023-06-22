# Modelling and estimation of criminal sentences using Logic Programming

This repository includes the files developed for the final project of the Computer Engineering degree. 

Through the Prolog-derived language `s(CASP)` and the `Blawx` tool we have implemented two interpretations for the same idea. For the first interpretation, we developed a code that allows us, through a sh-compatible terminal, to perform queries and obtain the results in natural language. By using natural language for the answers, we provide an insight into what an implementation of the system might look like once it is made available to the non-technical user. The implementation has been carried out thanks to the `s(CASP)` interpreter, by which we obtain the justification tree, key to the result. The rules required in this project could be generated either in the Playground of the [`s(CASP) interpreter`](https://ciao-lang.org/Playground/scasp.html), a web-based application created from the Ciao Playground and running entirely in the user’s browser, or they could be generated locally by performing the corresponding installation. 

The second, although more specific, also results in an intuitive interface through which we can test certain input values and observe the results. We have been fortunate to have the help of the system’s creator Jason Morris, who has always been willing to answer any questions and address any problems that may have arisen during the project. `Blawx` is an interesting and useful interface that also provides a new way of modularizing the legislative code and facilitates the medium user to understand how it works and use it.

## Local installation of s(CASP)

Once the requirementes expressed in the [installation manual for ciao](https://ciao-lang.org/install.html) are met, type the following one-liner in an sh-compatible terminal:
```
curl https://ciao-lang.org/boot -sSfL | sh
```
Afterwards, if `ciao` is working correctly in your computer, type the following in a sh-compatible terminal to install `s(CASP)`:

```
ciao get gitlab.software.imdea.org/ciao-lang/sCASP
```

## Testing the system

To execute a query locally, it is necessary to enter the following command in a sh-compatible terminal:
```
scasp -i –-tree –-short –-human delitos.database.pl
```
-i to run it interactively, --tree to print the justification tree, --short for a more efficient and intuitive justification and human to show us the justification in natural language. Now, type any query in the following manner:  
```
delito(d01, D), penaTotal(D, [A, B, C],[X, Y, Z]).
```
d01 is the variable that corresponds to the defendant whose total penalty we want to find out based on the input values expressed in the file [`delitos.database.pl`](main/delitos.database.pl). The terminal shows us the query we have performed with the new variables assigned, the number of answers found and the time it took to find them, the justification tree and lastly, the model with the facts and logical rules that have been involved and the result values.

To execute the system in the [s(CASP) Playground](https://ciao-lang.org/Playground/scasp.html), simply add the information of the three .pl files and once it is loaded,
the query should be typed the same way as we did locally.

## Testing Blawx

Once the project [`crimes_committed.blawx`](crimes_committed.blawx) is loaded in the [Blawx page](https://dev.blawx.com/), we must open the scenario editor to add and edit the input values of our query as we please and observe the results. Before inserting these values, in the View tab we can select the attributes we wish to hide in the selection of values. In our case, these would be the guilty attribute because it corresponds to the output value we are looking for and the consent attribute.

Next, to select the known facts that will function as input values, we use the drop-down menu where all possible attributes are presented. Once selected, Blawx enables us to determine the fact as true or false and to enter the variable we need. Once the facts needed for our specific situation are stated, we can run the program, and subsequently, it will show the output with the corresponding answers (or the absence of them).

To see further details and explanations check the [project report](https://github.com/elenais7/TFG-Elena-Martinez/blob/b3542d7c385b7ee93e56e9a220fbe0d383377fda/TFG%20Elena%20Mart%C3%ADnez.pdf).



