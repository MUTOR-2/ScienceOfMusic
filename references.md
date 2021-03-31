---
layout: page
title: References
---

{% for u in site.units %}
### {{ u.number }}. {{ u.title }} 
{: class="unit-references"}
<ol>
{% for r in u.references %}
<li>{% include format_reference ref=r %}</li>
{% endfor %}
</ol>

{% endfor %}

