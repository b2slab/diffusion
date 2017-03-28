# Version log

## Version 0.2.0

* Added performance wrapper: `perf` (and its core `perf_eval`) 
Can apply diffusion over a grid
of parameters and compute a metric using "target scores". 
Unit testing written as well.
* Dropped `pROC` dependency, added `Metrics`
* Helper functions to deal with the format of the files

### TODO

* Some more unit testing (helpers...). Aim at 100% coverage
* Add kernels
* Add examples to each function
* Test installation on other systems 
* Sanity check for inputs

## Version 0.0.10

* Added first 'wrapper': 
input scores can be given as vector, matrix or list of matrices. 
Whatever format was given will be returned. 
Contains unit testing.
This simplified vignettes a bit as well.
* Modified `graph_toy` to contain examples of input vector and matrix.
Updated doc and first vignette.
* Dense `Matrix` objects converted to base matrix in diffusion output.

### TODO

* Exhaustive unit testing
* Add kernels
* Add examples to each function
* Test installation on other systems 
* Add wrappers for several scores screening, AUC, CV(?)

## Version 0.0.8

* Added `largest_cc` helper
* First version of the `yeast` vignette. Takes 1:15 to build.

### TODO

* Exhaustive unit testing
* Add kernels
* Add examples to each function
* Test installation on other systems 
* Should we add wrappers? (cross-validation scores, AUC... 
We can use `try` to give `NA` as an AUC value for bad data splits)


## Version 0.0.6

* Fixed bug in `ber_s` (both matrices are from `Matrix`)
* Fixed bug in `gm` (missed `drop = FALSE` for the single-column case)
* Started second vignette with a bio example: yeast ppi. Added suggests.
* Now using `igraphdata`, the example is perfect!
* `raw` and `ber_s` will coincide if the tested nodes do not belong to 
the background

### TODO

* Exhaustive unit testing
* Add kernels
* End vignette

## Version 0.0.4

* Added synthetic input generator
* Fixed a bug in z-score - sums were computed over the raw scores 
and not the input
* Changed internal representation of default values for graph generation
* Added more unit testing (still missing some)
* Started synthetic example, see `data-raw`

### TODO

* Exhaustive unit testing
* Add kernels
* Add biological example - search for a Bioconductor package 
with a network in igraph format
* Add example
* Investigate: are `raw` and `ber_s` the same? 
They should be similar but not the same

## Version 0.0.2

First version of the package. Includes: 

* Synthetic network generation (`igraph` backend)
* Diffusion scores: `raw`, `ml`, `gm`, `z`, `mc`, `ber_s`, `ber_p`
* Monte carlo trials are in C++ and parallelised
* Support for diffusion in batchs with different backgrounds
* Unit testing of the majority of functions
* Example data
* Vignette
* Helper functions to plot colours and shapes

Results of `devtools::check()`: 1 NOTE 
(line *SystemRequirements: GNU make* in DESCRIPTION file)