---
layout: default
---

# Here are all the posts, by category:

{% for category in site.categories limit 1 %}
<div class="unit half">
  <h2 id="{{ tag[0] }}-ref">{{ category.first }}</h2>
  <ul class="posts">
  {% for post in site.categories[category.first] %}
      <li><span>{{ post.date | date: '%B %d, %Y' }}</span> &raquo; <a href="{{site.baseurl}}{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
  </ul>
</div>
{% endfor %}

# About the authors

This blog is written by Tableau consultants. Here are the past contributors:

- Claire Folks
- Chris Tolley
- Esther Schenau
- Derek Cyr
- Andrew Kavanaugh
- Alexis Guinebertiere

# Links