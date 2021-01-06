---
layout: default
---
{% include navigation.html %}

<!-- cria lista de autores distribuido por numero de volumes -->
<div class="columns is-mobile is-multiline">
  <div class="column is-4-desktop is-4-tablet is-6-mobile">
    {% assign autores = site.data.argonauta-alias | group_by: "Autor" | sort: "size" | reverse %}
    
    <div class="card">
                    <div>
                        {% for g in autores %}
      {% assign link = site.data.argonauta-autores | find: "Autor" , g.name %}
              <a href="/autores/{{ link.alias | append: ".html" }}">{{ g.name }}: {{ g.size }} Volume(s) </a>
                    </div>
                    <footer class="card-footer">
                        <a class="card-footer-item">
                            outtra
                        </a>
                    </footer>
                </div>
    {% endfor %}
    
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
