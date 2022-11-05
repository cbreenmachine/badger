#' Makes 
#'
#'Filters and checks that the design.df and bs samples are identical
#'Runs DSS models (See Wu 2016)
#'
#' @param bs a class bisulfite sequence object (see Hansen BSseq)
#' @param design.df a data.frame with covariates
#' @param dss.formula a `formula()` representing the model to fit
#' @param test.var a string representing the 
#' @keywords model
#' @export
#' @examples
#' munge_dss_outputs()


munge_dss_outputs <- function(dml.fit, test.var){
  
  test.result <- DMLtest.multiFactor(dml.fit, coef = test.var)
  #To measure effect size, other beta coefficients...
  beta.df <- data.frame(dml.fit$fit$beta)
  colnames(beta.df) <- colnames(dml.fit$X)
  
  #TODO fix outputs here?
  beta.df
  # design.mat <- model.matrix(dss.formula, design.df)
  
}
  
 
  
  
  