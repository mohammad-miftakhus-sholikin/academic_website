---
layout: presentasi-dua
title: Presentasi - Sintesis <i>Cecropin Like-Peptide 1</i> (CLP1) asal larva <i>Hermetia illucens</i> untuk Aditif Pakan Ayam Pedaging
excerpt: WEBINAR RISNOV TERNAK#8 "Peluang dan Tantangan Pengembangan Imbuhan Pakan Berbasis Tanaman Lokal, Mikroba, dan Serangga dalam Meningkatkan Produktivitas Unggas"
author: Mohammad Miftakhus Sholikin
modified: 03-04-2021
theme: simple
transition: convex
#autoslide: 10000
tags: [ilmu nutrisi dan pakan]
category: [akademik]
---



<style>
/* Warna teks umum */
.reveal section,
.reveal section h1,
.reveal section h2,
.reveal section h3,
.reveal section h4,
.reveal section h5,
.reveal section h6,
.reveal section p,
.reveal section li,
.reveal section table,
.reveal section th,
.reveal section td,
.reveal section code,
.reveal section blockquote {
    color: #2d5016ff !important;
}

/* Warna link */
.reveal section a {
    color: #2d5016ff !important;
}

/* Warna highlight (mark) */
.reveal section mark {
    background-color: white !important;
    color: #2d5016ff !important;
}
</style>



<section 
 data-markdown
 data-background-image="{{ site.github.url }}/images/postingan/2025-08-13-webinar-kelris/sampul.svg"
 data-background-size="100% 100%"
 data-transition="slide-in fade-out"
 id = "sampul">
 <script>
    <h4><a href = "{{ site.github.url }}/laman/akademik/"><b>Sintesis <i>Cecropin Like-Peptide 1</i> (CLP1) asal larva <i>Hermetia illucens</i> untuk Aditif Pakan Ayam Pedaging</b></a></h4>
    <hr><small>Mohammad Miftakhus Sholikin</small>
 </script>
</section>

<section
 data-markdown
 data-transition="slide-in fade-out"
 id = "pendahuluan">
 <script>
  <h4>Pendahuluan</h4>
 </script>
</section>

<section
 data-markdown
 data-transition="slide-in fade-out"
 id = "pelarangan-aip">
 <script>
  <h4>Mengapa AIP dilarang? dan Apa Solusinya?</h4>
  <img src="{{ site.github.url }}/images/postingan/2025-08-13-webinar-kelris/pendahuluan.svg"; height="475px">
 </script>
</section>



<section>
    <h4>Seberapa Besar Porsi AIP di Industri Pakan</h4>
    <div class="chart-row">
        <div class="chart-box"><canvas id="chartPakan"></canvas></div>
        <div class="chart-box"><canvas id="chartAIP"></canvas></div>
    </div>
</section>

<section>
    <h4>Jika 20% AIP Digantikan oleh PAM</h4>
    <div class="chart-box large">
        <canvas id="chartPAM"></canvas>
    </div>
</section>

{% raw %}
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
const tahun = ["2015","2016","2017","2018","2019","2020","2021"];
const produksi = [15.6,17.2,18.2,19.2,20.7,18.6,19.53];
const aip = [624,688,728,768,828,744,781.2];
const pam = aip.map(v => +(v*0.2).toFixed(2));
const aip_sisa = aip.map((v,i) => +(v - pam[i]).toFixed(2));

const dataLabelPlugin = {
  id: 'dataLabelPlugin',
  afterDatasetsDraw(chart) {
    const {ctx} = chart;
    chart.data.datasets.forEach((ds,i) => {
      chart.getDatasetMeta(i).data.forEach((pt,idx) => {
        ctx.save();
        ctx.fillStyle="#000"; ctx.font="bold 12px Arial";
        ctx.textAlign='center'; ctx.textBaseline='bottom';
        ctx.fillText(ds.data[idx], pt.x, pt.y - 8);
        ctx.restore();
      });
    });
  }
};

const baseOptions = (xLabel, yLabel) => ({
  responsive:true, maintainAspectRatio:false,
  plugins:{ legend:{ display:false } },
  scales:{
    x:{ title:{ display:true, text:xLabel, font:{ size:14, weight:'bold' } } },
    y:{ title:{ display:true, text:yLabel, font:{ size:14, weight:'bold' } } }
  }
});

const lineChart = (id, label, data, color, xLab, yLab) => {
  new Chart(document.getElementById(id), {
    type:'line',
    data:{ labels:tahun, datasets:[{
      label, data,
      borderColor:color, borderWidth:4,
      pointBackgroundColor:'white', pointBorderColor:'black',
      pointBorderWidth:1, fill:false
    }]},
    options: baseOptions(xLab, yLab),
    plugins:[dataLabelPlugin]
  });
};

lineChart("chartPakan", "Produksi (Juta Ton)", produksi, "red", "Tahun", "Produksi (Juta Ton)");
lineChart("chartAIP", "AIP 4% dari Pakan (Ribu Ton)", aip, "orange", "Tahun", "AIP 4% dari Pakan (Ribu Ton)");

new Chart(document.getElementById("chartPAM"), {
  type:'bar',
  data:{
    labels:tahun,
    datasets:[
      { label:'Sisa AIP', data:aip_sisa, backgroundColor:'orange' },
      { label:'PAM (20%)', data:pam, backgroundColor:'green' }
    ]
  },
  options:{
    responsive:true, maintainAspectRatio:false,
    plugins:{ legend:{ position:'top' } },
    scales:{
      x:{ stacked:true, title:{ display:true, text:'Tahun', font:{ size:14, weight:'bold' } } },
      y:{ stacked:true, title:{ display:true, text:'Ribu Ton', font:{ size:14, weight:'bold' } } }
    }
  }
});
</script>
{% endraw %}

<style>
.chart-row {
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
    gap: 20px;
}
.chart-box {
    width: 45vw;
    height: 40vh;
}
.chart-box.large {
    width: 70vw;
    height: 45vh;
    margin: auto;
}
</style>



<section
 data-markdown
 data-transition="slide-in fade-out"
 id = "alur-kerja">
 <script>
  <h4>Alur Kerja Sintesis CLP1</h4>
 </script>
</section>

<section
data-markdown
data-transition="slide-in fade-out"
id = "alur-sintesis">
<script>
  <h4>Alur Sintesis CLP1</h4>
  <img src="{{ site.github.url }}/images/postingan/2025-08-13-webinar-kelris/alur-sintesis.svg"; width="675px">
</script>
</section>

<section
data-markdown
data-transition="slide-in fade-out"
id="penggabungan-clp1-kozak">
<script>
 <h4>Penggabungan cDNA CLP1 ke dalam Fragmen T7-IRES-Kozak</h4>
 <div class="two-column" style="display: flex;">
   <div style="flex: 0 0 25%; padding-right: 10px;">
     <p align="justify" style="font-size:25px">RNA diekstraksi dari maggot (<i>Hermitia illucens</i>)</p>
     <p style="font-size:16px; color:#2d5016ff"><b>Komplemen DNA CLP1</b>: 5’-GGT TGG CGG AAG AGG GTC TTC; 3’- TTA TCC TTG TTG TGG TGG TCC ACC TCG<br/></p>
     <p style="font-size:16px; color:#2d5016ff"><b>T7</b>: 5’ – AAC GAC GGC CAG TGA ATT GTA ATA</p>
     <p style="font-size:16px; color:#2d5016ff"><b>IRES (<i>internal ribosome entry site</i>)</b>: 5’ – ATG GGT GGT GGC CAT ATT ATC ATC</p>
     <p style="font-size:16px; color:#2d5016ff"><b><i>His-tagged</i> </b>: 5’ – ATG GTG ATG GTG ATG ATG</p>
   </div>
   <div style="flex: 0 0 75%;">
     <img src="{{ site.github.url }}/images/postingan/2025-08-13-webinar-kelris/penggabungan-clp1-kozak.svg" height="475px">
   </div>
 </div>
</script>
</section>

<section
 data-markdown
 data-transition="slide-in fade-out"
 id = "pembuatan-fragmen-clp1">
 <script>
 <h4>Penyisipan Fragmen T7-IRES-Kozak-CLP1 pada Plasmid pt7CFE1-CHis</h4>
 <p align="center" style="font-size:20px"><img src="{{ site.github.url }}/images/postingan/2025-08-13-webinar-kelris/penyisipan-kozak-clp1-pt7CFE1-CHis.svg"; height="450px"><br/> Langkah penyisipan cDNA CLP1 pada <i>multiple cloning site</i> (MSC) pada plasmid pt7CFE1-CHis (<a href="https://linkinghub.elsevier.com/retrieve/pii/S0378111905004348">Kozak 2005</a>)</p>
 </script>
</section>

<section
 data-markdown
 data-transition="slide-in fade-out"
 id = "hasil">
 <script>
  <h4>Hasil</h4>
 </script>
</section>

<section
data-markdown
data-transition="slide-in fade-out"
id = "peptida-clp1">
<script>
  <h4>Deteksi Peptida CLP1</h4>
  <p align="center" style="font-size:20px"><img src="{{ site.github.url }}/images/postingan/2025-08-13-webinar-kelris/deteksi-peptida-clp1.svg"; height="375px"><br/> Hasil pengujian SDS-page, dot blot, dan mikroskop flourosen dari A. Kontrol negatif<br/>B. <i>Green fluorescent</i> protein C. Peptida CLP1</p>
</script>
</section>



<section>
  <section
  data-markdown
  data-transition="slide-in fade-out"
  id = "grafik-meta-broiler">
  <script>
    <h4><b>Grafik</b> Meta-Analisis: Performa Pertumbuhan Ayam Broiler</h4>
    <p align="center" style="font-size:20px"><img src="{{ site.github.url }}/images/postingan/2025-08-13-webinar-kelris/meta-broiler-1.svg"; width="875px"><br/> Dosis optimal PAM a. <mark>starter = 337</mark>, b. <mark>finisher = 359</mark>, dan c. <mark>total fase = 371</mark> (mg Kg<sup>-1</sup> dari pakan); <b style="color:red">merah</b> (fase starter: rataan 1-21 hari), <b style="color:orange">jingga</b> (fase finisher: rataan 22-42 hari), dan <b style="color:purple">ungu</b> (total fase) </p>
  </script>
  </section>

  <section
  data-markdown
  data-transition="slide-in fade-out"
  id = "tabel-meta-broiler">
  <script>
    <h4 style="font-size:35px"><b>Tabel</b> Meta-Analisis: Performa Pertumbuhan Ayam Broiler</h4>
    <p align="center" style="font-size:20px"><img src="{{ site.github.url }}/images/postingan/2025-08-13-webinar-kelris/meta-broiler-2.svg"; height="375px"><br/> Performa pertumbuhan ayam broiler fase starter dan finisher (BB, PPBH, dan FCR) nyata meningkat sedangkan, KPH tidak signifikan</p>
  </script>
  </section>

  <section
  data-markdown
  data-transition="slide-in fade-out"
  id = "tabel-meta-broiler-lanjutan">
  <script>
    <h4 style="font-size:35px"><b>Tabel</b> Meta-Analisis: Performa Pertumbuhan Ayam Broiler (lanjutan)</h4>
    <p align="center" style="font-size:20px"><img src="{{ site.github.url }}/images/postingan/2025-08-13-webinar-kelris/meta-broiler-3.svg"; height="250px"><br/> Total fase parameter (BB, PPBH, dan FCR) nyata meningkat, KPH tidak signifikan</p>
  </script>
  </section>
</section>



<section
data-markdown
data-transition="slide-in fade-out"
id = "mekanisme-pam-bakteri">
<script>
<h4>PAM terhadap Bakteri Patogen</h4>
<div class="two-column">
  <div>
    <img src="{{ site.github.url }}/images/postingan/2021-01-26-sidkom-prasidang/sidkom-prasidang-mekanisme-pam-bakteri.svg"; height="375px">
  </div>
  <div>
    <p align="left" style="font-size:20px">Model pengahambatan peptida antimikroba</p>
    <table style="width: 100%; border: 0px; font-size: 20px">
    <tr>
        <td>A.</td>
        <td><mark>perusakan dinding sel</mark>,</td>
    </tr>
    <tr>
        <td>B.</td>
        <td><mark>pengikatan nutrien dan mineral</mark>,</td>
    </tr>
    <tr>
        <td>C.</td>
        <td><mark>perusakan transkripsi DNA</mark>,</td>
    </tr>
    <tr>
        <td>D.</td>
        <td><mark>penghambatan translasi RNA</mark>,</td>
    </tr>
    <tr>
        <td>E.</td>
        <td><mark>penghambatan fungsi ribosom</mark> dalam sintesis protein, dan</td>
    </tr>
    <tr>
        <td>F.</td>
        <td><mark>pemblokiran protein chaperone</mark>, protein ini diperlukan untuk melipat protein dengan benar,</td>
    </tr>
    <tr>
        <td>G.</td>
        <td><mark><mark>penghambatan respirasi seluler dan induksi pembentukan ROS</mark> dan kerusakan integritas membran sel mitokondria dan kegagalan pembentukan ATP dan NADH (modifikasi <a href="http://www.jasbsci.com/content/6/1/19">Hao Xiao <i>et al</i>. 2015</a>)</td>
    </tr>
    <tr></tr>
    </table>
  </div>
</div>
</script>
</section>



<section
data-markdown
data-transition="slide-in fade-out"
id = "diagram-mekanisme-pam-invivo">
<script>
  <h4 style="font-size:30px">Bagaimana Mekanisme Kerja PAM?</h4>
  <p align="center" style="font-size:20px"><img src="{{ site.github.url }}/images/postingan/2025-08-13-webinar-kelris/mekanisme-pam-invivo-1.svg"; width="875px"><br/> Mekanime PAM dalam meningkatkan performa pertumbuhan<br/> ayam pedaging berdasarkan hasil meta-analisis</p>
</script>
</section>

<section
data-markdown
data-transition="none"
id = "diagram-mekanisme-pam-invivo">
<script>
  <h4 style="font-size:25px">Bagaimana Mekanisme Kerja PAM? (lanjutan)</h4>
  <p align="center" style="font-size:20px"><img src="{{ site.github.url }}/images/postingan/2025-08-13-webinar-kelris/mekanisme-pam-invivo-2.svg"; width="875px"><br/> Mekanime PAM dalam meningkatkan performa pertumbuhan<br/> ayam pedaging berdasarkan hasil meta-analisis</p>
</script>
</section>

<section
data-markdown
data-transition="slide-in fade-out"
id = "terima-kasih">
<script>
  <h4>Terima Kasih</h4>
  <p align="center" style="font-size:25px"><img src="{{ site.github.url }}/images/postingan/2025-08-13-webinar-kelris/terima-kasih.svg"; width="875px"></p>
</script>
</section>

<section
 data-markdown
 data-transition="slide-in fade-out"
 id = "sampul-belakang">
 <script>
  <small>Presentasi ini dibuat menggunakan [Reveal.js Demo Website](https://lab.hakim.se/reveal-js/#/)</small>
	<br/><small><a href="{{ site.github.url }}/akademikpresentasi-webinar-kelris-6/?print-pdf"><i>Bahan presentasi</i></a></small>
  <br/><small><small>Kembali ke <a href="#/sampul">sampul</a></small></small>
 </script>
</section>