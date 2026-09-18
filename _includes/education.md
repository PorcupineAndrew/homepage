## Education

{% for link in site.data.education.main %}

<div class="grouped-entry">
  <div class="timed-entry">
      <span>{{ link.affiliation }}</span>
      <span>{{ link.time }}</span>
  </div>
  {% for item in link.additional %}
  <p class="entry-note">{{ item.content }}</p>
  {% endfor %}
</div>

{% endfor %}
