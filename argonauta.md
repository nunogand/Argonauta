---
layout: default
---



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