# hse21_H3K4me1_ZDNA_mouse_1





cat name | xargs -I{} sh -c "zcat data/{}.bed.gz  |  cut -f1-5 > data/H3K4me1_MEL.{}.mm10.bed"

