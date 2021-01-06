---
layout: default
---
{% include navigation.html %}

<!-- cria lista de autores distribuido por numero de volumes -->
<div class="columns is-mobile is-multiline">
  <div class="column is-4-desktop is-4-tablet is-6-mobile">
    {% assign autores = site.data.argonauta-alias | group_by: "Autor" | sort: "size" | reverse %}


    <ul>
      {% for g in autores %}
      {% assign link = site.data.argonauta-autores | find: "Autor" , g.name %}

      <li><a href="/autores/{{ link.alias | append: ".html" }}">{{ g.name }}: {{ g.size }} Volume(s) </a>

      </li>

      {% endfor %}
    </ul>
  </div>
</div>
<!-- cria lista de autores distribuido por numero de volumes -->