#' Create the BSseq object that DSS needs
#'
#'Wrapper around `BSseq()` function that handles the positions,
#'and M/Cov values
#' @param chr a string representing which chromosome (e.g. chr18)
#' @param M a data.table of methylated read counts with columns 'chromStart', 'sample1', 'sample2', ...
#' @param Cov a data.table of coverage with columns 'chromStart', 'sample1', 'sample2', ...
#' @keywords BS
#' @export
#' @examples
#' construct_BSseq()


construct_BSseq <- function(chr, M, Cov){
  # create bs seq object, needs chromosome identiifer, methylated reads, and unmethylated reads
  bs <- BSseq(chr = rep(args$chr, nrow(M)), pos = M$chromStart,
              M = as.matrix(M[ , -c("chromStart"), with=FALSE]), 
              Cov = as.matrix(Cov[, -c("chromStart"), with=FALSE]), 
              sampleNames = names(M)[-1])  
}
