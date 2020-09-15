#' @export
#' @name proximityScore
#' @title Proximity Score
setGeneric(
  name = "proximity_score",
  signature = "Object",
  def = function(Object, ...) {
    standardGeneric("proximity_score")
  }
)


#' @export
#' @name diffTopoTest
#' @title Differential Topology Test
setGeneric(
  name = "diffTopoTest",
  signature = "sds",
  def = function(sds, ...) {
    standardGeneric("diffTopoTest")
  }
)

#' @export
#' @name diffProgressionTest
#' @title Differential Progression Test
setGeneric(
  name = "diffProgressionTest",
  signature = "sds",
  def = function(sds, ...) {
    standardGeneric("diffProgressionTest")
  }
)


#' @export
#' @name diffDifferentiationTest
#' @title Differential Differentiation Test
setGeneric(
  name = "diffDifferentiationTest",
  signature = "sds",
  def = function(sds, ...) {
    standardGeneric("diffDifferentiationTest")
  }
)