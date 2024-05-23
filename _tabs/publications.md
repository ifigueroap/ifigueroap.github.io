---
# the default layout is 'page'
icon: fas fa-scroll
order: 3
toc: true
---

{% if site.publications_wos.size > 0 %}

## WoS Publications

<ul>
{% for post in site.publications_wos reversed %}
  <li>
  <a href="{{ base_path }}{{ post.url }}" rel="permalink"><b>{{ post.title }}</b></a>
  {% if post.author %}
    <br/>{{ post.author }}
  {% endif %}
  {% if post.venue %}
    <br/><i>{{ post.venue }}</i>.
  {% endif %}  
  {% if post.year %}<i>{{ post.year }}</i>.{% endif %}
  </li>
  
{% endfor %}
</ul>
{% endif %}

{% if site.publications_scopus.size > 0 %}

## Scopus Publications

<ul>
{% for post in site.publications_scopus reversed %}
  <li>
  <a href="{{ base_path }}{{ post.url }}" rel="permalink"><b>{{ post.title }}</b></a>
  {% if post.author %}
    <br/>{{ post.author }}
  {% endif %}
  {% if post.venue %}
    <br/><i>{{ post.venue }}</i>.
  {% endif %}  
  {% if post.year %}<i>{{ post.year }}</i>.{% endif %}
  </li>
  
{% endfor %}
</ul>
{% endif %}

{% if site.publications_others.size > 0 %}

## Other Publications

<ul>
{% for post in site.publications_others reversed %}
  <li>
  <a href="{{ base_path }}{{ post.url }}" rel="permalink"><b>{{ post.title }}</b></a>
  {% if post.author %}
    <br/>{{ post.author }}
  {% endif %}
  {% if post.venue %}
    <br/><i>{{ post.venue }}</i>.
  {% endif %}  
  {% if post.year %}<i>{{ post.year }}</i>.{% endif %}
  </li>
  
{% endfor %}
</ul>

{% endif %}
