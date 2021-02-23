---
layout: semua-post
title: Semua Post
excerpt: "Semua Post dari Penulis"
---


### Semua tulisan yang berkatagori akademik 

<ul>
    {% for doc in site.categories.akademik %}
        <li><a href="{{ doc.url }}">{{ doc.title }}</a></li>
    {% endfor %}
</ul>

### Semua tulisan yang berkatagori lain 

<ul>
    {% for doc in site.categories.lain %}
        <li><a href="{{ doc.url }}">{{ doc.title }}</a></li>
    {% endfor %}
</ul>

### Semua tulisan yang berkatagori profil 

<ul>
    {% for doc in site.categories.profil %}
        <li><a href="{{ doc.url }}">{{ doc.title }}</a></li>
    {% endfor %}
</ul>

### Semua tulisan yang berkatagori rumah 

<ul>
    {% for doc in site.categories.rumah %}
        <li><a href="{{ doc.url }}">{{ doc.title }}</a></li>
    {% endfor %}
</ul>