---
# the default layout is 'page'
icon: fas fa-scroll
order: 3
toc: true
---

{% assign wos_collection_size = site.publications_wos | size %}

{% if wos_collection_size > 0 %}
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

{% assign scopus_collection_size = site.publications_scopus | size %}

{% if scopus_collection_size > 0 %}
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
