#' Plots the number of SNPs observed at each passage number over time
#'
#
#' @param a A data.frame containing the data
#' @return Graph of number of SNPS over passage number
#' @examples
#' map_SNP(a)
#' @export



map_SNP <- function(x) {
  ggplot(x, aes(x=passage, y=snps, shape=segment))+
    geom_line(linetype=1)+
    geom_point(aes(shape=segment))+
    theme(panel.background=element_blank())+
    theme(panel.border = element_blank(), axis.line = element_line(colour="black", size=1, lineend="square"))+
    scale_x_continuous(name="Passage Number",breaks = seq(from=1, to=10, by=1), limits = c(0,10))+
    scale_y_continuous(name = "Number of SNPs")
}
