## Services

<h4 style="margin: 0;">Teaching Assistant</h4>

{% for link in site.data.teaching.main %}

<div class="grouped-entry">
  <div class="timed-entry">
      <span>{{ link.course }}</span>
      <span>{{ link.time }}</span>
  </div>

    {% for item in link.additional %}

  <p style="margin-bottom: 0;">{{ item.content }}</p>

    {% endfor %}

</div>

{% endfor %}

<h4 style="margin: 0;">Peer Reviewer</h4>

<p style="margin-bottom: 0;"><b>Journal Reviewer:</b> IEEE TDSC</p>
<p style="margin-bottom: 0;"><b>External Reviewer:</b> USENIX Security 2022/2023, ISOC NDSS 2022/2023/2024/2025/2026, ACM CCS 2022/2023/2024/2025, ACM WWW 2025, IEEE ICNP 2025, ACM ASIACCS 2022/2024</p>
