## Selected Projects

{% for link in site.data.projects.main %}

<div class="grouped-entry">
  <div class="timed-entry">
    <span>{{ link.title }}</span>
    <span>{{ link.time }}</span>
  </div>
  <div class="timed-entry">
    <span class="project-badges">

    {% for badge in link.badges %}

      <a href="{{ badge.href }}"><img class="project-badge" src="{{ badge.img_src }}" alt="{{ badge.img_alt }}"></a>

    {% endfor %}

    </span>

    <span class="project-role">{{ link.role }}</span>

  </div>
</div>

{% endfor %}
