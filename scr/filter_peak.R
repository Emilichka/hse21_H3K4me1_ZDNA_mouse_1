source('lib.R')
library(magrittr)


NAME <- 'H3K4me1_MEL.ENCFF086CHI.mm10'
NAME <- 'H3K4me1_MEL.ENCFF267GXF.mm10'
NAME <- 'mouseZ-DNA1'
 

bed_df <- read.delim(paste0(DATA_DIR, NAME , '.bed'), as.is = TRUE, header = FALSE)
colnames(bed_df) <- c('chrom', 'start', 'end', 'name', 'score')
bed_df$len <- bed_df$end - bed_df$start
head(bed_df)

ggplot(bed_df) +
  aes(x = len) +
  geom_histogram() +
  ggtitle(NAME , subtitle = sprintf('Number of peaks = %s', nrow(bed_df))) +
  theme_bw()
ggsave(paste0('filter_peaks.', NAME , '.init.hist.png'), path = OUT_DIR)

# Remove long peaks

bed_df_new <- bed_df %>%
  arrange(-len) %>%
  filter(len < 3000)

ggplot(bed_df_new) +
  aes(x = len) +
  geom_histogram() +
  ggtitle(NAME , subtitle = sprintf('Number of peaks = %s', nrow(bed_df_new))) +
  theme_bw()
ggsave(paste0('filter_peaks.',NAME , '.filtered.hist.png'), path = OUT_DIR)

bed_df_new %>%
  select(-len) %>%
  write.table(file=paste0(DATA_DIR, NAME  ,'.filtered.bed'),
              col.names = FALSE, row.names = FALSE, sep = '\t', quote = FALSE)

