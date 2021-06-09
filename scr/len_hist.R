source('lib.R')


NAME <- c('H3K4me1_H1.ENCFF006PXB.hg19', 'H3K4me1_H1.ENCFF238YJA.hg19') 
NAME <- c('H3K4me1_H1.intersect_with_DeepZ')
NAME <- c('H3K4me1_H1.merge.hg19')
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
