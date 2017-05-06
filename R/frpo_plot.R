#' Plots the frequency of SNPs over the length of the genome.
#'
#'
#' @param a A data.frame containing the data
#' @param total The length of the genome.
#' @return Graph of SNP frequency over genome
#' @examples
#' frpo_plot(a, 2000)
#' frpo_plot(a, 3500)
#' @export


frpo_plot<-function(x,total=4000){

  ggplot(x, aes(x=position, y=frequency))+
    geom_point(size=2)+
    theme(panel.border = element_blank(), axis.line = element_line(colour="black", size=1, lineend="square"))+
    theme(panel.background=element_blank())+
    scale_x_continuous(name="Nucleotide Position",breaks = seq(from=0, to=total, by=250), limits = c(0,total))+
    scale_y_continuous(name = "SNP Frequency", breaks = seq(from=0, to=100, by=10),limits = c(0,100))
}
