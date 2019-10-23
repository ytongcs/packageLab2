
#'  boxplot of payments by DRG code 
#'
#' @param var_y 
#'
#' @return plot
#' @export
#'
#' @examples boxplotdrg("Average.Medicare.Payments")
#' 
boxplotdrg <- function(var_y){
  ggplot(drg.data, aes_string(x = "DRG", y = var_y)) +
    scale_y_continuous(trans='log10') + 
    geom_boxplot(outlier.shape = NA) + 
    theme(axis.text.x = element_text(angle = 90, size = 6, hjust = 1)) + 
    ylab(cat('Log ',var_y)) + 
    xlab('DRG Code') + 
    ggtitle(cat(var_y, " for Hospitals by DRG Code", sep = ""))
}
