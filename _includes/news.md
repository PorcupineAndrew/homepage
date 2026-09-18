## News

<div class="news-timeline">

{% for link in site.data.news.main %}

  <div class="news-item">
    <div class="news-date">{{ link.date }}</div>
    <div class="news-content">{{ link.content }}</div>
  </div>

{% endfor %}

</div>
