---
layout: tulisan
title: Pelatihan - <i>Machine learning</i> dengan Orange3
excerpt: Pengenalan <i>mechine learning</i> menggunakan Orange3 dibidang peternakan khususnya ilmu nutrisi dan pakan
author: Mohammad Miftakhus Sholikin
modified: 06-10-2020
tags: [artificial neural network, machine learning, orange3, principal component analysis]
comments: true
category: [akademik]
toc: false
---



## Pendahuluan
<div align="justify">
Tutorial ini dibuat untuk pengenalan machine learning pada bidang peternakan menggunakan aplikasi Orange3.
</div>


## Instalasi Orange3
<div align="justify">
<b>Langkah 1.</b> Unduh file instalasi (<a href="https://download.biolab.si/download/files/Orange3-3.26.0-Miniconda37-x86_64.exe"><b>di sini</b></a> atau pergi <a href="https://orange.biolab.si/download/#windows"><b>ke link ini</b></a>) dan simpan file ke lokasi tertentu. <b>File lumayan besar 467 MB</b>. Mulailah instalasi dengan mengklik dua kali file yang diunduh. <b>Pilih Ya</b> ketika ditanya apakah Anda ingin mengizinkan program ini membuat perubahan pada komputer Anda.
</div>

![Windows 1]({{ site.github.url }}/images/postingan/2020-10-06-pelatihan-orange/pelatihan-orange-windows-1.png)

<div align="justify">
<b>Langkah 2.</b> Setup akan meminta Anda untuk mengkonfirmasi instalasi Python 3.4 di komputer Anda. <b>Tekan OK</b>. Jika Anda sudah menginstal Python 3.4, langkah ini tidak diperlukan.
</div>

![Windows 2]({{ site.github.url }}/images/postingan/2020-10-06-pelatihan-orange/pelatihan-orange-windows-2.png)

<div align="justify">
<b>Langkah 3.</b> Ikuti wizard penginstalan untuk menginstal Python 3.4. Anda dapat meninggalkan pengaturan default dan menunggu instalasi selesai.
</div>

![Windows 3]({{ site.github.url }}/images/postingan/2020-10-06-pelatihan-orange/pelatihan-orange-windows-3.png)

![Windows 4]({{ site.github.url }}/images/postingan/2020-10-06-pelatihan-orange/pelatihan-orange-windows-4.png)

![Windows 5]({{ site.github.url }}/images/postingan/2020-10-06-pelatihan-orange/pelatihan-orange-windows-5.png)

![Windows 6]({{ site.github.url }}/images/postingan/2020-10-06-pelatihan-orange/pelatihan-orange-windows-6.png)

<div align="justify">
<b>Langkah 4.</b> Setelah menginstal Python 3.4, wizard akan menginstal Orange 3 dan dependensinya. <i>Langkah ini mungkin membutuhkan waktu beberapa saat</i>.
</div>

![Windows 7]({{ site.github.url }}/images/postingan/2020-10-06-pelatihan-orange/pelatihan-orange-windows-7.png)

<div align="justify">
<b>Langkah 5.</b> Klik dua kali pada ikon desktop Oranye untuk memulai aplikasi Oranye. Untuk menginstal widget <b>bioinformatika</b>, ikuti menu <b>Options</b> --> <b>Add-ons</b>. <b>Centang kotak</b> di samping Orange3-Bioinformatics dan <b>tekan OK</b>. <b>NB: Ini tidak wajib diinstal karena kadang-kadang bikin eror</b>.
</div>

![Windows 8]({{ site.github.url }}/images/postingan/2020-10-06-pelatihan-orange/pelatihan-orange-windows-8.png)


## Editing data
<div align="justify">
<b>Langkah 1.</b> Download file di <a href="https://codeload.github.com/mohammad-miftakhus-sholikin/pelatihan-2020-ml/zip/master"><b>sini</b></a>
<br><br><b>Langkah 2.</b> Ekstrak file
<br><br><b>Langkah 3.</b> Buka aplikasi Orange3
<br><br><b>Langkah 4.</b> Drag file <b>Contoh1_2020__pca-sholikin.ows</b> ke dalam aplikasi untuk tutorial pertama. Sedangkan tutorial kedua gunakan <b>Contoh2_2020__ann-sholikin.ows</b>.
</div>

![Orange 1.]({{ site.github.url }}/images/postingan/2020-10-06-pelatihan-orange/pelatihan-orange-orange-1.png)

<div align="justify">
<b>Langkah 5.</b> <u>Input data online</u>: Salin link data "<i>https://raw.githubusercontent.com/mohammad-miftakhus-sholikin/pelatihan-2020-ml/master/ch1_pca/Data_2019__Sifat_fisik_pakan.csv</i>" untuk <b>Contoh1_2020__pca-sholikin.ows</b>. Buka ikon file (klik dua kali), kemudian salin ke <b>URL</b> dan <b>reload</b>. Gunakan link data "<i>https://raw.githubusercontent.com/mohammad-miftakhus-sholikin/pelatihan-2020-ml/master/ch1_ann/Data_2020__Kebutuhan_kalsium_dan_fosfor.csv</i>" untuk <b>Contoh2_2020__ann-sholikin.ows</b>.
</div>

![Orange 2.]({{ site.github.url }}/images/postingan/2020-10-06-pelatihan-orange/pelatihan-orange-orange-2.png)

![Orange 3.]({{ site.github.url }}/images/postingan/2020-10-06-pelatihan-orange/pelatihan-orange-orange-3.png)

<div align="justify">
<b>Langkah 6.</b> <u>Input data offline</u>: Buka ikon file (klik dua kali), kemudian klik ikon folder dan cari di mana file download tadi di simpan. Kemuadian pilih <b>Data_2019__Sifat_fisik_pakan.csv</b> untuk <b>Contoh1_2020__pca-sholikin.ows</b> sedangkan pilih <b>Data_2020__Kebutuhan_kalsium_dan_fosfor.csv</b> untuk <b>Contoh2_2020__ann-sholikin.ows</b>.
</div>


## Analisis
```
NB: dijelaskan pas temu online saja.
```

## Interpretasi
**Hasil 1.** Hasil untuk **Contoh1_2020__pca-sholikin.ows**:

![Orange 4.]({{ site.github.url }}/images/postingan/2020-10-06-pelatihan-orange/pelatihan-orange-orange-4.png)

![Orange 5.]({{ site.github.url }}/images/postingan/2020-10-06-pelatihan-orange/pelatihan-orange-orange-5.png)


**Hasil 2.** Hasil untuk **Contoh2_2020__ann-sholikin.ows**:
![Orange 6.]({{ site.github.url }}/images/postingan/2020-10-06-pelatihan-orange/pelatihan-orange-orange-6.png)

![Orange 7.]({{ site.github.url }}/images/postingan/2020-10-06-pelatihan-orange/pelatihan-orange-orange-7.png)

![Orange 8.]({{ site.github.url }}/images/postingan/2020-10-06-pelatihan-orange/pelatihan-orange-orange-8.png)

![Orange 9.]({{ site.github.url }}/images/postingan/2020-10-06-pelatihan-orange/pelatihan-orange-orange-9.png)


## Daftar pustaka
- All content of Orange3 installation from this post refer to [__biolab__.](http://biolab.github.io/install-orange/#win)
- Also thanks to [__google translate__](https://translate.google.co.id)