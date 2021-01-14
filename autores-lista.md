---
layout: default
title: Lista de Autores
---
{% include navigation.html %}

<!-- cria cartões de autores distribuido por numero de volumes -->

<section class="section is-small">
<div class="container box">
<div class="columns is-multiline is-centered is-mobile">


            {% assign autores = site.data.argonauta-alias | group_by: "Autor" | sort: "size" | reverse %}
            {% for g in autores %}
            {% assign link = site.data.argonauta-autores | find: "Autor" , g.name %}

            <div class="column is-one-fifth-desktop is-one-quarter-tablet is-half-mobile">
                <div class="card card1 card-equal-height">
                    <div class="card-image cardimg1">
                        <figure class="image is-1by1">
                            <img src="https://picsum.photos/200" alt="a random image"
                                class="is-rounded">
                        </figure>
                    </div>
                    <div class="card-content has-text-centered">
                        <p class="title">{{ g.name }}{{ link.alias }}</p>
                        <div class="content">
                            <p> {{ g.size }} Volume(s)</p>
                            {{site.data.autores.[link.alias].enciclopedia}}
                            {{site.data.autores.[link.alias].isfd}}
                            {{site.data.autores.[link.alias].wikipedia}}
                        </div>
                    </div>
                    <div class="card-footer">
                        <p class="card-footer-item">
                            <span class="icon">
                            <img src="/assets/sfe.png">
                            </span>
                        </p>
                        <p class="card-footer-item">
                            <span class="icon">
                            <img src="/assets/isfdb.png">
                            </span>
                        </p>
                        <p class="card-footer-item">
                            <span class="icon">
                            <img src="/assets/w.png">
                            </span>
                        </p>
                    </div>
                </div>
            </div>
            {% endfor %}
</div>
</div>
</section>