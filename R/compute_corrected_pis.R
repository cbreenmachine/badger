# 
# compute_corrected_pis <- function(i){
#   # See Wu 2016
#   # https://academic.oup.com/bioinformatics/article/32/10/1446/1743267
#   # arcsin(2*pi_{i,d} - 1) = X b
#   # (sin(X b) + 1 ) / 2
#   t( (sin(as.matrix(design.mat) %*% as.matrix(beta.df)[i, ]) + 1) / 2)
# }
# 
