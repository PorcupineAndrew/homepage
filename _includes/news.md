## News

<div class="news-timeline">

{% for link in site.data.news.main %}

  <div class="news-item">
    <div class="news-date">{{ link.date }}</div>
    <div class="news-content">{{ link.content }}</div>
  </div>

{% endfor %}

</div>

<div id="news-scroll-hint" style="text-align: right; font-size: 0.75em; color: #999; margin-top: -15px; margin-bottom: 15px; font-style: italic; margin-right: 5px; transition: opacity 0.3s ease;">
  scroll for more
</div>
