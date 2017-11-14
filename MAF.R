minorAlleleFrequency <- function(SNPmat){
  # get minor allele frequency 
  # from matrix when SNPs are in columns
  maf <- colMeans(SNPmat, na.rm = TRUE)/2
  # find maf > 0.5 (common alleles)
  common <- which(maf > 0.5)
  # fix maf
  maf[common] <- 1 - maf[common]
  return(maf)
}
