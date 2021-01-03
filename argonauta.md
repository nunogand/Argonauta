---
layout: default
---
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



<div class="table-container">
  <table class="table is-striped is-narrow is-hoverable">
    {% for row in site.data.argonauta %}
    {% if forloop.first %}
    <tr>
      {% for pair in row %}
      <th>{{ pair[0] }}</th>
      {% endfor %}
    </tr>
    {% endif %}

    {% tablerow pair in row %}
    {{ pair[1] }}
    {% endtablerow %}
    {% endfor %}
  </table>
</div>