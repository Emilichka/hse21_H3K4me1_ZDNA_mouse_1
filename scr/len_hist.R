source('lib.R')


NAME <- c('H3K4me1_MEL.ENCFF086CHI.mm10', 'H3K4me1_MEL.ENCFF267GXF.mm10', 'mouseZ-DNA1') #'H3K4me1_MEL.intersect_with_mouseZDNA1')

###
for (name in NAME) {
    bed_df <- read.delim(paste0(DATA_DIR, name, '.bed'), as.is = TRUE, header = FALSE)
    colnames(bed_df) <- c('chrom', 'start', 'end')
    bed_df$len <- bed_df$end - bed_df$start

  ggplot(bed_df) +
    aes(x = len) +
    geom_histogram() +
    ggtitle(name, subtitle = sprintf('Number of peaks = %s', nrow(bed_df))) +
    theme_bw()
  ggsave(paste0('len_hist.', name, '.png'), path = OUT_DIR)

}
