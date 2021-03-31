---
layout: page
title: Discussion Questions
permalink: /discussion_questions/
---

{% for u in site.units %}
### {{ u.number }}. {{ u.title }}

{% for q in u.test_questions %}
{% increment n %}. {{ q }}

{% endfor %}
{% endfor %}
