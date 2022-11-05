#' Makes volcano plot
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
#' fit_dss_models()
#' 





fit_dss_models <- function(bs, df, smoothing, smoothing.span, dss.formula){
  # 
  # 
  # # Pull out just the covariates we'll use
  # design.df <- df %>% 
  #   column_to_rownames("sample_id") %>%
  #   dplyr::select(all_of(c(args$test_covariate, covariates_split))) %>%
  #   dplyr::mutate_at(args$test_covariate, as.numeric) %>% 
  #   drop_na()
  # 
  # # If there are NAs in any of the covariates specified, be sure to drop
  # #corresponding sample in bs object
  # ix <- colnames(bs) %in% rownames(design.df)
  # bs.sub <- bs[ , ix]
  # 
  # if (all(colnames(bs.sub) == rownames(design.df))){
  #   print("After filtering NAs, rownames in design match colnames in bs")
  # } else {
  #   warning("rownames in design != colnames in bs")
  # }
  # 
  # # Fit models
  # dml.fit <- DMLfit.multiFactor(bs.sub, design = design.df, smoothing = smooth, 
  #                               smoothing.span = args$smoothing, formula = dss.formula)
  # 
  # #TODO: interpret this from command line args...
  # test.var <- args$test_covariate
  # test.result <- DMLtest.multiFactor(dml.fit, coef = test.var)
  # 
  # #To measure effect size, other beta coefficients...
  # beta.df <- data.frame(dml.fit$fit$beta)
  # colnames(beta.df) <- colnames(dml.fit$X)
  # 
  # design.mat <- model.matrix(dss.formula, design.df)
  # 
  
}

  
 