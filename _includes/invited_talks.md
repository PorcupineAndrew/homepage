## Invited Talks

{% for link in site.data.invited_talks.main %}

<div class="grouped-entry">
  <p class="entry-note">{{ link.theme }}</p>

    {% for item in link.venues %}

  <div class="timed-entry">
    <span>{{ item.venue }}</span>
    <span>{{ item.time }}</span>
  </div>

    {% endfor %}

</div>

{% endfor %}
