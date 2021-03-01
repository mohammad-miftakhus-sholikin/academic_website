---
layout: presentasi-satu
title: Presentasi - Pengenalan teknik meta-analisis dan aplikasi R
excerpt: Pengenalan meta-analisis tentang pemembuatan basis data, analisis data, dan intepretasi hasil
author: Mohammad Miftakhus Sholikin
modified: 10-01-2021
theme: simple
transition: convex 
tags: [antimicrobial peptide, linier mixed model, meta-analysis]
category: [akademik, rumah]
---



<section data-markdown
 data-transition="zoom"
 id = "sampul">
 <script> 
 <h4><a href = "{{ site.github.url }}/laman/akademik/">Pengenalan Teknik Meta-Analisis dan Aplikasi R</a></h4>
 </script>
</section>

<section data-markdown
 data-transition="zoom">
 <script> 
 <img src="{{ site.github.url }}/images/postingan/2021-01-10-presentasi-pelatihan-metal/rober-gentleman.jpg"; height=150px>
 <img src="{{ site.github.url }}/images/postingan/2021-01-10-presentasi-pelatihan-metal/ross-Ihaka.jpg"; height=150px>

 --[rober-gentleman](https://mathgenealogy.org/id.php?id=26386)--
 --[ross-Ihaka](https://en.wikipedia.org/wiki/Ross_Ihaka)--

 <img src="{{ site.github.url }}/images/postingan/2021-01-10-presentasi-pelatihan-metal/rlogo.svg"; height=85px>

 https://cran.r-project.org/
 
 <small><small>Kembali ke <a href="#/sampul">sampul</a> atau <a href="{{ site.github.url }}/laman/akademik/">akademik</a> bisa juga <a href="{{ site.github.url }}/akademik/rumah/presentasi-pelatihan-metal/?print-pdf#/sampul">print pdf</a></small></small>
 </script> 
</section>

<section data-markdown
  data-transition="zoom">
  <script>
  <img src="{{ site.github.url }}/images/postingan/2021-01-10-presentasi-pelatihan-metal/presentasi-metal-1.svg"; height=575px>
  </script>
</section>

<section data-markdown
 data-transition="zoom">
 <script>
 <h4><a href="#/sampul">Apa itu __Metal__ (Meta-Analisis)?</a></h4>
 <img src="{{ site.github.url }}/images/postingan/2021-01-10-presentasi-pelatihan-metal/presentasi-metal-2.svg"; height=475px>
 </script>
</section>

<section data-markdown
 data-transition="zoom">
 <script>
 <h4><a href="#/sampul">Penentuan dan Pecarian Topik Metal</a></h4>
 <img src="{{ site.github.url }}/images/postingan/2021-01-10-presentasi-pelatihan-metal/presentasi-metal-3.svg"; height=475px>
 </script>
</section>

<section data-markdown
 data-transition="zoom">
 <script>
 <h4><a href="#/sampul">PRISMA dan Metal</a></h4>
 <img src="{{ site.github.url }}/images/postingan/2021-01-10-presentasi-pelatihan-metal/presentasi-metal-4.svg"; height=475px>
 </script>
</section>

<section data-markdown
 data-transition="zoom">
 <script>
 <h4><a href="#/sampul">Penyususnan Data dan Analisis dengan R</a></h4>
 <img src="{{ site.github.url }}/images/postingan/2021-01-10-presentasi-pelatihan-metal/presentasi-metal-5.svg"; height=475px>
 </script>
</section>

<section data-markdown
 data-transition="zoom">
 <script>
 <h4><a href="#/sampul">Pengenalan Aplikasi dan Instalasi R</a></h4>
 <p style="text-align:justify; font-size:20px"><b>Langkah 1.</b> Download di <a href="https://cran.r-project.org/bin/windows/base/R-4.0.2-win.exe"><b>sini</b></a> atau pergi kelaman <a href="https://cran.r-project.org/bin/windows/base/"><b>ini</b></a>. (<b>NB: file rada gede gan 80an MB</b>)
 <br/><b>Langkah 2.</b> Lakukan instalasi pada umumnya (pergi ke folder download -> klik dua kali file instaler -> ikuti petunjuk).
 <br/><b>Langkah 3.</b> Kalau udah kelar coba cari di start menu ketikan <b>R</b> atau cari saja <i>scrolling</i>.</p>
 <center><img src="{{ site.github.url }}/images/postingan/2021-01-10-presentasi-pelatihan-metal/cara-install-r-windows.gif"; height=375px></center>
</script>
</section>

<section data-markdown
 data-transition="zoom">
 <script>
 <h4><a href="#/sampul">Menjalankan R <i>Script</i> untuk Meta-Analisis</a></h4>
 <p style="text-align:justify; font-size:20px"><b>Langkah 1.</b> Pastikan R nya udah jalan, abis itu ganti diriektorinya dengan cara kilk File -> Change dir.... -> (cari lokasi tadi ekstrak filenya) -> klik ok
 <br/><b>Langkah 2.</b> Untuk memastikan saja, ketikan perintah berikut di R console.</p>

 <pre>
 
 dir()
 </pre>
 
 <p style="text-align:justify; font-size:20px">outputnya nanti ini, klo gak ini coba cek direktory downloadnya tadi. Atau nanti tanya saya sambil di screen shot.</p>
 
 <pre>
 
 [1] "Data_2020__AMP_broiler.csv"
 [2] "Data_2020__AMP_broiler.xlsx"
 [3] "images"
 [4] "README.md"
 [5] "Rscript_2020__Contoh _kuantitatif-1.R"
 [6] "Rscript_2020__Contoh _kuantitatif-2.R"
 [7] "Rscript_2020__Contoh_kualitatif.R"
 </pre>

 <p style="text-align:justify; font-size:20px"><b>Langkah 3.</b> Abis tuh klik ikon open (di bawahnya menu File), selanjutnya cari nama **Rscript_2020__Contoh _kuantitatif-1.R**.
 <br/><b>Langkah 4.</b> Klo udah blok tulisan yang ada dan klik Ctrl + R.</p>
</script>
</section>

<section data-markdown
 data-transition-speed="fast">
 <script>
 <small>Presentasi ini dibuat menggunakan [Reveal.js Demo Website](https://lab.hakim.se/reveal-js/#/)</small>
 <br/><small><small>Kembali ke <a href="#/sampul">sampul</a> atau <a href="{{ site.github.url }}/laman/akademik/">akademik</small></a></small></small>
 </script>
</section>