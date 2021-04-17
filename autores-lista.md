---
layout: default
title: Lista de Autores
---
{% include navigation.html %}
{% include hero.html %}
<link rel="stylesheet" href="{{ site.baseurl }}{{ site.assets }}/livro.css">
<!-- cria cartões de autores distribuido por numero de volumes -->

<section class="section is-small">
    <div class="container box">
        <div class="columns is-multiline is-centered is-mobile">


            {% assign autores = site.data.argonauta-alias | group_by: "Autor" | sort: "size" | reverse %}
            {% for g in autores %}
            {% assign link = site.data.argonauta-autores | find: "Autor" , g.name %}

            <div class="column is-one-fifth-desktop is-one-quarter-tablet">
                <div class="card card-equal-height">
                    <div class="card-image cardimg1">
                        <figure class="image is-1by1">
                        <a href="/autores/{{ link.alias | append: ".html" }}">
                            <img loading=lazy src="/assets/autores/{{ link.alias | append: ".jpg" }}" alt="{{ g.name }}" class="is-rounded">
                            </a>
                        </figure>
                    </div>
                    <div class="card-content has-text-centered">
                        <a href="/autores/{{ link.alias | append: ".html" }}">
                            <p class="title is-size-4">{{ g.name }}</p>
                        </a>

                        <div class="content">
                            <p> {{ g.size }} Volume(s)</p>



                        </div>
                    </div>
                    <div class="card-footer">
                        <p class="card-footer-item">
                            <span class="icon">
                                <a href="{{site.data.autores[link.alias].enciclopedia}}">
                                    <img loading=lazy src="/assets/sfe.png"></a>
                            </span>
                        </p>
                        <p class="card-footer-item">
                            <span class="icon">
                                <a href="{{site.data.autores[link.alias].isfd}}">
                                    <img loading=lazy src="/assets/isfdb.png">
                                </a>
                            </span>
                        </p>
                        <p class="card-footer-item">
                            <span class="icon">
                                <a href="{{site.data.autores[link.alias].wikipedia}}">
                                    <img loading=lazy src="/assets/w.png"></a>
                            </span>
                        </p>
                    </div>
                </div>
            </div>
            {% endfor %}
        </div>
    </div>
</section>