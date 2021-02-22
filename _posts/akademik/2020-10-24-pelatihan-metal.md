---
layout: tulisan
title: Pelatihan - Meta-analisis menggunakan R dan Rstudio
excerpt: Pengenalan meta-analisis tentang pemembuatan basis data, analisis data, dan intepretasi hasil
author: Mohammad Miftakhus Sholikin
modified: 24-10-2020
tags: [modelling]
comments: true
category: [akademik]
toc: false
---



## Pendahuluan
<div align="justify">
Tutorial ini dibuat untuk pengenalan dan penggunaan R sebagai alat meta-analisis pada bidang peternakan.
</div>


## Instalasi R
<b>Langkah 1.</b> Download di [**sini**](https://cran.r-project.org/bin/windows/base/R-4.0.2-win.exe) atau pergi kelaman [**ini**](https://cran.r-project.org/bin/windows/base/). (**NB: file rada gede gan 80an MB**)

<b>Langkah 2.</b> Lakukan instalasi pada umumnya (pergi ke folder download -> klik dua kali file instaler -> ikuti petunjuk).
{: #satudua}

   ![cara install]({{ site.github.url }}/images/postingan/2021-01-10-presentasi-pelatihan-metal/cara-install-r-windows.gif)

<b>Langkah 3.</b> Kalau udah kelar coba cari di start menu ketikan **R** atau cari saja _scrolling_.


## Download file pelatiahannya
<b>Langkah 1.</b> Klik di [sini](https://codeload.github.com/mohammad-miftakhus-sholikin/pelatihan-2020-metal/zip/master). Usahakan downloadnya di folder Downloads pada umumnya.

<b>Langkah 2.</b> Kemudian ekstrak file "pelatihan-2020-metal.zip".


## Install <i>packages</i> yang dibutuhkan buat metal (langkah ini bisa dilewati)
<b>Langkah 1.</b> Lihat dulu tampilan program R nya.

   ![r interface 1]({{ site.github.url }}/images/postingan/2021-01-10-presentasi-pelatihan-metal/rconsole-1.png)

   ini tanda klo R console siap diberikan perintah.
   ```
   >
   ```

<b>Langkah 2.</b> Di R console ketikan perintah berikut dan klik enter, "*bagian yang merah*".
   ```
   install.packages("RCurl"); install.packages("lme4"); install.packages("readxl")
   ```
   biasanya pop up disuruh pilih server, langsung klik ok saja.

<b>Langkah 3.</b> Kalo lancar pasti gak ada error. Coba cek scroll ke atas.
   
   ini contoh selesai install
   ```
   dst. dst.
   * DONE(RCurl)
   dst. dst.
   * DONE(lme4)
   dst. dst.
   * DONE(readxl)
   ```
   ini contoh klo eror 
   ```
   Error in install.packages :
   ```

## Menjalankan R script untuk meta-analisis
<b>Langkah 1.</b> Pastikan R nya udah jalan, abis itu ganti diriektorinya dengan cara kilk File -> Change dir.... -> (cari lokasi tadi ekstrak filenya) -> klik ok

   ![r interface 2]({{ site.github.url }}/images/postingan/2021-01-10-presentasi-pelatihan-metal/rconsole-2.png)

   ![r interface 3]({{ site.github.url }}/images/postingan/2021-01-10-presentasi-pelatihan-metal/rconsole-3.png)

   <b>Langkah 2.</b> Untuk memastikan saja, ketikan perintah berikut di R console.
   
   ```
   dir()
   ```
   outputnya nanti ini, klo gak ini coba cek direktory downloadnya tadi. Atau nanti tanya saya sambil di screen shot.
   
   ```
   [1] "Data_2020__AMP_broiler.csv" 
   [2] "Data_2020__AMP_broiler.xlsx"
   [3] "images"
   [4] "README.md"
   [5] "Rscript_2020__Contoh _kuantitatif-1.R"
   [6] "Rscript_2020__Contoh _kuantitatif-2.R"
   [7] "Rscript_2020__Contoh_kualitatif.R"
   ```

   <b>Langkah 3.</b> Abis tuh klik ikon open (di bawahnya menu File), selanjutnya cari nama **Rscript_2020__Contoh _kuantitatif-1.R**.

   <b>Langkah 4.</b> Klo udah blok tulisan yang ada dan klik Ctrl + R.


## Penjelasan R script dan R console
Klo tampilannya yang penting tuh ada dua: satu, **R console** buat eksekusi kode jadi klo nulis perintah di sini terus klik enter otomatis nanti langsung dieksekusi (dijalankan perintahnya, ati-ati ya jan di close R consolenya nanti keluar dari program r). Yang kedua tuh, **R script** (ini semacam lembar kerja klo mau nulis kode atau perintah yang banyak, jadi gak repot2x harus ketikin perintah di console). Nah tadi tuh lupa jelasin klo di R console yang ada merah2xnya tuh perintah cuman bisa di ketik satu baris jadi susah klo mau ketik perintah banyak baris, makanya pake R script. Nah lanjut ke rscript ya, di sini tuh bisa nulis perintah berbaris2x jadi aman sebelum dijalankan ke R console. Nah gimana jalaninnya gampang blok kode yang ingin di jalankan lalu klik Ctrl + R, otomatis R consolenya jalan (liatin aja klo jalan biasanya klo ada eror nanti dikasih tau ama R consolenya dan apa aja erornya).
   
   __ini R console__

   ![r interface 4]({{ site.github.url }}/images/postingan/2021-01-10-presentasi-pelatihan-metal/rconsole-4.png)
   
   __ini R script__
   
   ![r interface 5]({{ site.github.url }}/images/postingan/2021-01-10-presentasi-pelatihan-metal/rscript.png)


## Daftar pustaka
- All content of R installation from this post refer to [__CRAN__.](https://cran.r-project.org/)
- Also thanks to [__google translate__](https://translate.google.co.id)