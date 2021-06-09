library(ChIPseeker)
library(TxDb.Hsapiens.UCSC.hg19.knownGene)
#library(TxDb.Mmusculus.UCSC.mm10.knownGene)
library(clusterProfiler)
#BiocManager::install("org.Mm.eg.db")
source('lib.R')



###



NAME <- 'H3K4me1_H1.ENCFF006PXB.hg19.filtered'
NAME <- 'H3K4me1_H1.ENCFF238YJA.hg19.filtered'
NAME <- 'H3K4me1_H1.intersect_with_DeepZ'

BED_FN <- paste0(DATA_DIR, NAME, '.bed')

###

txdb <-TxDb.Hsapiens.UCSC.hg19.knownGene

peakAnno <- annotatePeak(BED_FN, tssRegion=c(-3000, 3000), TxDb=txdb, annoDb="org.Mm.eg.db")

#pdf(paste0(OUT_DIR, 'chip_seeker.', NAME, '.plotAnnoPie.pdf'))
png(paste0(OUT_DIR, 'chip_seeker.', NAME, '.plotAnnoPie.png'))
plotAnnoPie(peakAnno)
dev.off()
