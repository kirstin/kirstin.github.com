---
layout: page
---
{% include JB/setup %}

<div class="blog-index">
  {% for post in site.posts limit 5 %}
      <a href="{{ post.url }}"><h3>{{ post.title }}</h3></a>
      {{ post.content | strip_html | truncatewords:75}}<br>
            <a href="{{ post.url }}">Read more...</a><br><br><br>
  {% endfor %}
</div>
