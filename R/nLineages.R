#' nLineages
#'
#' @description Return the number of lineages for a slingshot object
#' @param sds A slingshot object already run on the full dataset. Can be either a
#' \code{\link[slingshotadapt]{SlingshotDataSet}} or a
#' \code{\link[SingleCellExperiment]{SingleCellExperiment}} object.
#' @export
#' @examples
#' data(list = 'slingshotExample', package = "slingshot")
#' if (!"cl" %in% ls()) {
#'   rd <- slingshotExample$rd
#'   cl <- slingshotExample$cl
#' }
#' sds <- slingshotadapt::slingshot(rd, cl)
#' nLineages(sds)
#' @rdname nLineages
#' @importClassesFrom SingleCellExperiment SingleCellExperiment
#' @return The number of lineages in the slingshot object
#' @importFrom slingshotadapt SlingshotDataSet
setMethod(f = "nLineages",
          signature = c(sds = "SingleCellExperiment"),
          definition = function(sds){
            if (is.null(sds@int_metadata$slingshot)) {
              stop("No slingshot object")
            } else {
              return(nLineages(slingshotadapt::SlingshotDataSet(sds)))
            }
          }
)

#' @export
#' @rdname nLineages
#' @importClassesFrom slingshotadapt SlingshotDataSet
setMethod(f = "nLineages",
          signature = c(sds = "SlingshotDataSet"),
          definition = function(sds){
            return(length(slingshotadapt::slingCurves(sds)))
          }
)

#' @export
#' @rdname nLineages
#' @importClassesFrom TrajectoryUtils PseudotimeOrdering
setMethod(f = "nLineages",
          signature = c(sds = "PseudotimeOrdering"),
          definition = function(sds){
            return(length(slingshotadapt::slingCurves(sds)))
          }
)
