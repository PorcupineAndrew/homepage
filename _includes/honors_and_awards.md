## Honors and Awards

<div class="grouped-entry">

{% for link in site.data.honors_and_awards.main %}

  <div class="timed-entry">
      <span>{{ link.award }}</span>
      <span>{{ link.time }}</span>
  </div>

{% endfor %}

</div>
