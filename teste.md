---
layout: default
title: Lista de Autores
---

Try this:
site.data.nome_csv.Número[123].Autor1 | inspect

{{site.data.argonauta-alias-index[123].Numero | inspect}}
{{site.data.argonauta-alias-index[123].Autor | inspect}}

site.data.argonauta-alias-index |where  | inspect

{%capture titulo%}{{ page.url | remove:"/livros/"}}{%endcapture%}
{{titulo}}
{% assign selected = site.data.argonauta-alias-index |where: 'Titulo-link','titulo' %}
{{selected | inspect}}

//
cria o link html do autor na página de cada livro

          {%capture titulo%}{{ page.url | remove:"/livros/"}}{%endcapture%}
{{titulo}}
          

          {% for badge in site.data.argonauta-alias-index %}
          {% if badge.Titulo-link == titulo %}
            {{ badge.alias | append:".html"}}
          {% endif %}
        {% endfor %}
///