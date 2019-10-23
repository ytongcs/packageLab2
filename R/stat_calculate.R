
#' stat_calculate
#'
#' @param stat
#'
#' @return df
#' @export
#'
#' @examples stat_calculate("mean")

stat_calculate <- function(stat = c("mean", "median","standard_deviation")){
  if (stat == "mean") {
    df <- drg.data %>% group_by(DRG) %>% summarise(Average_Medicare_Payments_Mean=mean(Average.Medicare.Payments))}
  if (stat == "median") {
    df <-drg.data %>% group_by(DRG) %>% summarise(Average_Medicare_Payments_Median=median(Average.Medicare.Payments))}
  if (stat == "standard_deviation") {
    df <- drg.data %>% group_by(DRG) %>% summarise(Average_Medicare_Payments_Standard_Deviation=sd(Average.Medicare.Payments))}
  return(df)
}

