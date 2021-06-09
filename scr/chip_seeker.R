library(ChIPseeker)
#library(TxDb.Hsapiens.UCSC.hg19.knownGene)
library(TxDb.Mmusculus.UCSC.mm10.knownGene)
library(clusterProfiler)
BiocManager::install("org.Mm.eg.db")
source('lib.R')



###



NAME <- 'H3K4me1_MEL.ENCFF086CHI.mm10.filtered'
NAME <- 'H3K4me1_MEL.ENCFF267GXF.mm10.filtered'
NAME <- 'mouseZ-DNA1'

BED_FN <- paste0(DATA_DIR, NAME, '.bed')

###

txdb <-TxDb.Mmusculus.UCSC.mm10.knownGene

peakAnno <- annotatePeak(BED_FN, tssRegion=c(-3000, 3000), TxDb=txdb, annoDb="org.Mm.eg.db")

#pdf(paste0(OUT_DIR, 'chip_seeker.', NAME, '.plotAnnoPie.pdf'))
png(paste0(OUT_DIR, 'chip_seeker.', NAME, '.plotAnnoPie.png'))
plotAnnoPie(peakAnno)
dev.off()
