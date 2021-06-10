# hse21_H3K4me1_ZDNA_mouse
Genome version: mm10

# Результаты

## Анализ пиков гистоновой метки

1. ### Распределение длин участков

   - #### **ENCFF086CHI**

   Перед фильтрацией - 60235 пиков

   ![alt text](https://github.com/Emilichka/hse21_H3K4me1_ZDNA_mouse_1/blob/main/graphics/len_hist.H3K4me1_MEL.ENCFF086CHI.mm10.png)

   Выбранный порог длины: 2500

   После фильтрации - 60194


   ![alt text](https://github.com/Emilichka/hse21_H3K4me1_ZDNA_mouse_1/blob/main/graphics/filter_peaks.H3K4me1_MEL.ENCFF086CHI.mm10.filtered.hist.png)

   - #### **ENCFF267GXF**

   Перед фильтрацией - 88012

   ![alt text](https://github.com/Emilichka/hse21_H3K4me1_ZDNA_mouse_1/blob/main/graphics/len_hist.H3K4me1_MEL.ENCFF267GXF.mm10.png)

   Выбранный порог длины: 2500

   После фильтрации -87623


   ![alt text](https://github.com/Emilichka/hse21_H3K4me1_ZDNA_mouse_1/blob/main/graphics/filter_peaks.H3K4me1_MEL.ENCFF267GXF.mm10.filtered.hist.png)

2. ### Расположение пиков относительно аннотированных генов

   - #### **ENCFF086CHI**

   ![alt text](https://github.com/Emilichka/hse21_H3K4me1_ZDNA_mouse_1/blob/main/graphics/chip_seeker.H3K4me1_MEL.ENCFF086CHI.mm10.filtered.plotAnnoPie.png)


   

   - #### **ENCFF267GXF**

   ![alt text](https://github.com/Emilichka/hse21_H3K4me1_ZDNA_mouse_1/blob/main/graphics/chip_seeker.H3K4me1_MEL.ENCFF267GXF.mm10.filtered.plotAnnoPie.png)

3. ### Визуализация пиков и их объединения

4. track visibility=dense name="ENCFF267GXF"  description="H3K4me1_MEL.ENCFF267GXF.mm10.filtered.bed"
   https://raw.githubusercontent.com/Emilichka/hse21_H3K4me1_ZDNA_mouse_1/main/data/H3K4me1_MEL.ENCFF267GXF.mm10.filtered.bed

   track visibility=dense name="ENCFF086CHI"  description="/H3K4me1_MEL.ENCFF086CHI.mm10.filtered.bed"
   https://raw.githubusercontent.com/Emilichka/hse21_H3K4me1_ZDNA_mouse_1/main/data/H3K4me1_MEL.ENCFF086CHI.mm10.filtered.bed

   track visibility=dense name="ChIP_merge"  color=50,50,200   description="H3K4me1_MEL.merge.mm10.bed"
   https://raw.githubusercontent.com/Emilichka/hse21_H3K4me1_ZDNA_mouse_1/main/data/H3K4me1_MEL.merge.mm10.bed

   ![alt text](https://github.com/Emilichka/hse21_H3K4me1_ZDNA_mouse_1/blob/main/graphics/Genome_merge.png)

   ##### Распределение длин участков

   ![alt text](https://github.com/Emilichka/hse21_H3K4me1_ZDNA_mouse_1/blob/main/graphics/len_hist.H3K4me1_MEL.merge.mm10.png)

   ## Анализ вторичной структуры ДНК 

Структура - ZDNA_mouse_1

![alt text](https://github.com/Emilichka/hse21_H3K4me1_ZDNA_mouse_1/blob/main/graphics/ZDNA.png)

1. ### Распределение длин участков

   ![alt text](https://github.com/Emilichka/hse21_H3K4me1_ZDNA_mouse_1/blob/main/graphics/len_hist.mouseZ-DNA1.png)

2. ### Расположение пиков относительно аннотированных генов

![alt text](https://github.com/Emilichka/hse21_H3K4me1_ZDNA_mouse_1/blob/main/graphics/ZDNA.png)

## Анализ пересечения гистоновой метки и структуры ДНК

1. ### Распределение длин участков

   ![alt text](https://github.com/Emilichka/hse21_H3K4me1_ZDNA_mouse_1/blob/main/graphics/len_hist.H3K4me1_MEL.intersect_with_mouseZDNA1.png)

2. ### Расположение пиков относительно аннотированных генов

   ![alt text](https://github.com/namikhnenko/hse21_H3K4me3_ZDNA_mouse/blob/main/images/chip_seeker.H3K4me3_ES_E14.intersect_with_ZDNA.annopie.pdf.png-1.png)

   

3. ### Визуализация исходных участков ДНК и пересечения с гистоновой меткой

4. Ссылка на сохраненную сессию: http://genome.ucsc.edu/s/namikhnenko/H3K4me3_ZDNA_ES_E14

   chr1:3,670,546-3,671,504

   ![alt text](https://github.com/namikhnenko/hse21_H3K4me3_ZDNA_mouse/blob/main/images/inter3.png)

   chr1:4,491,779-4,493,869

   ![alt text](https://github.com/namikhnenko/hse21_H3K4me3_ZDNA_mouse/blob/main/images/inter4.png)

5. ### Ассоциация пересечений с генами

   Количество пиков, которые удалось проассоциировать: 1125

   Количество уникальных генов: 14

6. ### GO анализ

Общая информация

![alt text](https://github.com/namikhnenko/hse21_H3K4me3_ZDNA_mouse/blob/main/images/go_summary.jpg)

Наиболее важные категории

![alt text](https://github.com/namikhnenko/hse21_H3K4me3_ZDNA_mouse/blob/main/images/go_analiysis.png)