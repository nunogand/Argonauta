---
layout: default
title: Lista de Autores
---
{% include navigation.html %}

<!-- cria cartões de autores distribuido por numero de volumes -->

<section class="section is-small">
<div class="container box">
<div class="columns is-multiline is-centered">


            {% assign autores = site.data.argonauta-alias | group_by: "Autor" | sort: "size" | reverse %}
            {% for g in autores %}
            {% assign link = site.data.argonauta-autores | find: "Autor" , g.name %}
            <div class="column is-one-fifth-desktop is-one-quarter-tablet is-half-mobile">
                <div class="card card1 card-equal-height">
                    <div class="card-image">
                        <figure class="image is-1by1">
                            <img src="https://picsum.photos/200" alt="a random image"
                                class="is-rounded">
                        </figure>
                    </div>
                    <div class="card-content has-text-centered">
                        <p class="title">{{ g.name }}</p>
                        <div class="content">
                            <p> {{ g.size }} Volume(s)</p>
                        </div>
                    </div>
                    <div class="card-footer">
                        <p class="card-footer-item">
                            <span class="icon">
                                <i class="fas fa-home">o</i>
                            </span></p>
                    </div>
                </div>
            </div>
            {% endfor %}
</div>
</div>
</section>