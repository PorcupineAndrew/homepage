## Services

<h4 class="section-subheading">Teaching Assistant</h4>

{% for link in site.data.teaching.main %}

<div class="grouped-entry">
  <div class="timed-entry">
      <span>{{ link.course }}</span>
      <span>{{ link.time }}</span>
  </div>

    {% for item in link.additional %}

  <p class="entry-note">{{ item.content }}</p>

    {% endfor %}

</div>

{% endfor %}

<h4 class="section-subheading">Peer Reviewer</h4>

<p class="entry-note"><b>Journal Reviewer:</b> IEEE TDSC, ACM TOPS</p>
<p class="entry-note"><b>External Reviewer:</b> USENIX Security 2022/2023, ISOC NDSS 2022/2023/2024/2025/2026, ACM CCS 2022/2023/2024/2025, ACM WWW 2025, IEEE ICNP 2025, ACM ASIACCS 2022/2024</p>
