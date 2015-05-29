{% extends "default.html.swig" %}

{% block wrap_block %}
<div class="a_boby">
  <div class="a_box">
    <div class="a_nav">
      <div class="a_navcot clearfix">
        <ul>
        <li><a href="/about.html" class="on">关于我们</a></li>
        <li><a href="/culture.html">文化宗旨</a></li>
        <li><a href="/photo.html">担路相册</a></li>
        <li><a href="/history.html">发展历程</a></li>
        <li><a href="/protocol.html">用户协议</a></li>
        <li><a href="/terms.html">隐私条款</a></li>
        <li><a href="/biz.html">商家合作</a></li>
        <li><a href="#">担路公告</a></li>
        <li><a href="/contact.html">联系我们</a></li>
        <li><a href="/hr.html">担路招聘</a></li>
        <li><a href="/agent.html">代理加盟</a></li>
        </ul>
      </div>
    </div>
    <div class="a_content">
        {{ document.content|safe }}
    </div>
  </div>
</div>

{% endblock %}
