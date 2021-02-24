---
layout: semua-post
title: Semua Post
excerpt: "Semua Post dari Penulis"
---



{% for category in site.categories %}
  <h4>Semua tulisan yang berkategori <mark>{{ category[0] }}</mark></h4>
  <ul>
    {% for post in category[1] %}
      <li><a href="{{ site.github.url }}{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
  </ul>
{% endfor %}

{% for tag in site.tags %}
  <h4>Semua tulisan yang bertag <mark>{{ tag[0] }}</mark></h4>
  <ul>
    {% for post in tag[1] %}
      <li><a href="{{ site.github.url }}{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
  </ul>
{% endfor %}