## Publications

<div class="publications">
<ul class="publication-list">

{% for link in site.data.publications.main %}

<li class="publication-item">
  <div class="publication-content">
    <div class="publication-title">
      {% if link.pdf %}
      <a href="{{ link.pdf }}">{{ link.title }}</a>
      {% else %}
      {{ link.title }}
      {% endif %}
    </div>
    <div class="publication-authors">{{ link.authors }}</div>
    <div class="publication-venue"><em>{{ link.conference }}</em></div>
    <div class="publication-links">
      {% if link.pdf %} 
      <a href="{{ link.pdf }}" target="_blank" rel="noopener">PDF</a>
      {% endif %}
      {% if link.code %} 
      <a href="{{ link.code }}" target="_blank" rel="noopener">Code</a>
      {% endif %}
      {% if link.page %} 
      <a href="{{ link.page }}" target="_blank" rel="noopener">Project Page</a>
      {% endif %}
      {% if link.bibtex %} 
      <a href="{{ link.bibtex }}" target="_blank" rel="noopener">BibTex</a>
      {% endif %}
      {% if link.notes %} 
      <strong class="publication-note">{{ link.notes }}</strong>
      {% endif %}
      {% if link.others %} 
      {{ link.others }}
      {% endif %}
    </div>
  </div>
</li>

{% endfor %}

</ul>
</div>
