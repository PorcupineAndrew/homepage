## Selected Projects

{% for link in site.data.projects.main %}

<div style="margin-bottom: 12px;">
  <div style="margin-bottom: 0; display: flex; justify-content: space-between; align-items: center;">
    <span>{{ link.title }}</span>
    <span>{{ link.time }}</span>
  </div>
  <div style="margin-bottom: 0; display: flex; justify-content: space-between; align-items: center;">
    <span style="display: flex; align-items: center; gap: 4px;">

    {% for badge in link.badges %}

      <a href="{{ badge.href }}"><img src="{{ badge.img_src }}" alt="{{ badge.img_alt }}" style="height:18px; vertical-align:middle;"></a>

    {% endfor %}

    </span>

    <span style="align-self: center;">{{ link.role }}</span>

  </div>
</div>

{% endfor %}
