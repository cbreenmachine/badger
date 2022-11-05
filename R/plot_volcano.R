#' Makes volcano plot
#'
#' Creates the skeleton of the Volcano plot (i.e. scatter). You'll need to 
#' customize labels, legend, etc. after the fact. Cannot know a priori what the 
#' axis limits will be.
#' @param dmps a dataframe with a `chr`, `pos`, `x`, `y` (`y` should be -log10-ed)
#' @param alpha a -log10-ed significance level applied to `y`
#' @keywords volcano plot viz
#' @export
#' @examples
#' plot_volcano()
 

.generate_nsig_label <- function(dmps, alpha){
  # Spits out a label like "N = 10,000 significant DMPs"
  N.sig <- sum(dmps$y > -log10(alpha))
  sig.lab <- formatC(n.sig, format="d", big.mark=",")
  paste0("N=", sig.lab, " significant DMPs")
}


.thin_data <- function(dmps){
  # Thins non-significant points so we don't plot all 25 million  
  ix <- sample(which(dmps$y < -log10(0.01)))
  ix.to.ignore <- ix[1:floor(length(ix) * 0.999)]
  
  sub.df <- dmps[-ix.to.ignore, ]
  sub.df
}


.assign_colors <- function(df){
  # Order of color and order of pallete
  df$color <- factor(sub.df$color, levels = c("grey", "hyper", "hypo"))
  df
}



plot_volcano <- function(dmps, alpha, color.hyper, color.hypo){
  
  my_label <- .generate_nsig_label(dmps, alpha)
  sub.df <- .thin_data(dmps)
  sub.df <- .assign_colors(sub.df)
  my_pal <- c("grey", color.hyper, color.hypo)
  
  gc()
  
  #Plot volcano
  p <- sub.df %>%
    ggplot(aes(x = x, y = y, color = color)) +
    geom_jitter(size = 0.2, alpha = 1, height=1, width=0) +
    scale_color_manual(values = my_pal) +
    xlab("Genomic position") +
    ylab("Effect size") +
    theme(panel.grid.major.y = element_line(color = "grey", size=0.25),
          panel.grid.major.x = element_line(color = "grey", size=0.25),
          axis.text.x = element_text(angle = 0),
          axis.ticks = element_blank()) +
    annotate("text", -Inf, Inf, label = my_label, hjust = 0, vjust = 1)
  
}


