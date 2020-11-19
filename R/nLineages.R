#' nLineages
#'
#' @description Return the number of lineages for a slingshot object
#' @export
#' @rdname nLineages
#' @importClassesFrom SingleCellExperiment SingleCellExperiment
#' @importFrom slingshot SlingshotDataSet
setMethod(f = "nLineages",
          signature = c(sds = "SingleCellExperiment"),
          definition = function(sds){
            if (is.null(sds@int_metadata$slingshot)) {
              stop("No slingshot object")
            } else {
              return(nLineages(slingshot::SlingshotDataSet(sds)))
            }
          }
)

#' @export
#' @rdname nLineages
#' @importClassesFrom slingshot SlingshotDataSet
setMethod(f = "nLineages",
          signature = c(sds = "SlingshotDataSet"),
          definition = function(sds){
            return(length(slingshot::slingCurves(sds)))
          }
)