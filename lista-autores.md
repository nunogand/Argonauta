---
layout: default
---

<div>
  {% assign autores = site.posts | group_by: 'Autor1' | sort: "nome" %}
  {% for Autor1 in autores %}
    {% if Autor1.nome == "" %}
      {% assign nome = "Anónimo" %}
    {% else %}
      {% assign nome = Autor1.nome %}
    {% endif %}
    <a href="#{{ nome | slugify }}">{{ nome }}</a>
  {% endfor %}
</div>

{% for Autor1 in autores %}
<div>
  {% if Autor1.nome == "" %}
    {% assign nome = "Anónimo" %}
  {% else %}
    {% assign nome = Autor1.nome %}
  {% endif %}
  <span class="Autor1-title" id="{{ nome | slugify }}">{{ nome | debug }}</span>
    <ul class="post-list">
      {% assign pages_list = Autor1.items %}
      {% for post in pages_list reversed %}
        <li><a href="{{ site.url }}{{ post.url }}">{{ post.title }}<span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}" itemprop="datePublished">{{ post.date | date: "%m/%d/%Y" }}</time></a></li>
      {% endfor %}
    </ul>
  </span>
</div>
{% endfor %}
