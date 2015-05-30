<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>{{ document.title }}-{{ site.title }}</title>
        <meta content="担路网(Demlution.com)是一家满足于个性化需求的服务平台,用户免费发布需求,商家提供解决方案,我们倡导需求引导消费的生活模式,同时为中小商家提供一站式门户搭建,包括网站制作,网站推广,品牌建设.{{ document.description }}" name="description">
        <meta content="担路网, 个性化需求, 定制化服务, 商家建站,网站制作,上海网站制作, 松江网站制作,上海最便宜的网站制作,网络推广,网站优化{{ document.keywords }}" name="keywords">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta name="renderer" content="webkit">
        <meta name="viewport" content="target-densitydpi=device-dpi, width=1200px, user-scalable=yes">
        {{ getBlock("styles").add(["/styles/dm-base.css"]).add(["/styles/ab-css.css"]).add(["/styles/online.css"]).add(document.styles).toHTML() }}
    </head>

    <body>
        <div {% block bodyclass_block %}class="wj-body"{% endblock %}>
        {% block top_block %}
        <div class="w-header">
            <div class="w-hbg"></div>
                <div class="tipcolor">
                    <div class="tipc">
                    <div class="tipc1"></div>
                    <div class="tipc2"></div>
                    <div class="tipc3"></div>
                    <div class="tipc4"></div>
                    </div>
                </div>
                <div class="wh-cot">
                <h1><a href="/" class="w-logo">担路网</a></h1>
            <div class="w-nav">
                <div class="w-nav_c">
                    <ul class="wnav-li">
                    <li class="last"><a title="担路网-Demlution" href="http://www.demlution.com/">首页</a></li>
                    <li><a title="担路平台" target="_blank" href="http://www.demlution.com/index.html">担路平台</a></li>
                    <li><a title="担路网-网站建设" target="_blank" href="http://www.danlu.net">担路产品</a></li>
                    <li><a title="担路帮助" target="_blank" href="http://www.demlution.com/about/help/">担路帮助</a></li>
                    <li><a class="on" title="担路介绍" target="_blank" href="http://www.demlution.com/about/about/">担路介绍</a></li>        
                    </ul>
                </div>
            </div>
            <div class="w-htoool">
                <a href="http://weibo.com/demlution" target="_blank" title="担路新浪微博" class="sweibo showweibo"></a>
                <a href="http://t.qq.com/danluwangluokeji" target="_blank" title="担路腾讯微博" class="sqq"></a>
                <a title="官方微信号:demlution" class="sweixin" target="_blank" href="http://www.danlu.net/weixin.html"></a>
                <ul class="loginbox">
                        <a href="/account/login/" target="_blank"><li class="lft"></li></a>
                        <a href="/account/signup/" target="_blank"><li class="rft"></li></a>
                </ul>
                <div class="markinfo"><img alt="微信二维码" src="../images/w-wx.jpg" /></div>
            </div>
            </div>
        </div>
        {% endblock %}
            {% block focus_block %}
            <div class="wj-focusbg">
            <div class="wj-focus" id="flashBg">
                <div class="f-txt">
                    <div class="bd">
                    <div class="f-txt1">Demlution 释义：Demand + Solution</div>
                    <div class="f-txt2">新社会 新消费 新服务</div>
                    <div class="f-txt3">一路担当，为企业提供互联网工具，让供需互动变得触手可及</div>
                    <div class="f-txt4"></div>
                    </div>
                </div>
                <div class="f-phone">热线电话：
                    <em>400-855-5051</em>
                </div>
            </div>
            </div>
            {% endblock %}

            {% block wrap_block %}
            {{ document.content|safe }}
            {% endblock %}
        {% block foot_block %}
        <div class="w-footer">
        <div class="wfot-help">
            <div class="fh-all clearfix">
                <ul>
                <li class="fh-site">
                    <dl>
                    <dt>旗下网站</dt>
                    <dd><a target="_blank" href="http://www.demlution.com/">担路首页</a></dd>
                    <dd><a target="_blank" href="http://www.demlution.com/index.html">担路平台</a></dd>
                    <dd><a target="_blank" href="http://www.danlu.net/">担路产品</a></dd>
                    <dd><a target="_blank" href="http://www.demlution.com/about/help/">担路帮助</a></dd>
                    </dl>
                </li>
                <li class="fh-about">
                    <dl>
                    <dt>了解担路</dt>
                    <dd><a target="_blank" href="http://about.demlution.com/about.html">关于我们</a></dd>
                    <dd><a target="_blank" href="http://about.demlution.com/culture.html">文化宗旨</a></dd>
                    <dd><a target="_blank" href="http://about.demlution.com/contact.html">联系我们</a></dd>
                    <dd><a target="_blank" href="http://about.demlution.com/hr.html">担路招聘</a></dd>
                    </dl>
                </li>
                <li class="fh-member">
                    <dl>
                    <dt>用户与企业</dt>
                    <dd><a target="_blank" href="http://about.demlution.com/protocol.html">用户协议</a></dd>
                    <dd><a target="_blank" href="http://about.demlution.com/terms.html">隐私条款</a></dd>
                    <dd><a target="_blank" href="http://about.demlution.com/biz.html">商家合作</a></dd>
                    <dd><a target="_blank" href="http://about.demlution.com/agent.html">代理加盟</a></dd>
                    </dl>
                </li>
                <li class="fh-cotact">
                    <dl>
                    <dt>服务支持</dt>
                    <dd><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=1439391305&site=qq&menu=yes">在线沟通>></a>(9:00-22:00 非工作日9:00-20:00)</dd>
                    <dd>售后专线：021-39517056(24小时服务热线)</dd>
                    <dd>客服邮箱：<a target="_blank" href="mailto:lx@demlution.com">lx@demlution.com</a></dd>
                    </dl>
                </li>
                <li class="fh-ico">
                    <div class="i1"><a target="_blank" href="http://weibo.com/demlution"><div class="icon-weibo"></div></a>&nbsp;
                    <a target="_blank" class="a-wx" href="http://www.danlu.net/weixin.html"><div class="icon-comments-alt"></div></a></div>
                    <div class="i2">热线电话：<b>400-855-5051</b></div>
                </li>
                </ul>
            </div>
        </div>
        <div class="wfot-bot">
        <div class="wfot-copy">
            <p>Copyright &copy; 2011-2015 <a href="http://www.demlution.com/">上海担路网络科技有限公司</a>(担路网 Demlution.com) 版权所有 沪ICP备12018506号-1 &nbsp;<script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F75fb47e8b856d549e2e9b28533498cdb' type='text/javascript'%3E%3C/script%3E"));
</script></p>
        </div>
        <img src="http://www.demlution.com/site_media/static/img/fbg.png" />
        </div>
    </div>
        {% endblock %}
        </div>
        <div id="online_qq_layer">
            <div id="online_qq_tab">
                <div class="online_icon">
                    <a title="" id="floatShow" style="display:block" href="javascript:void(0);">&nbsp;</a>
                    <a title="" id="floatHide" style="display:none" href="javascript:void(0);">&nbsp;</a>
                </div>
                <!--online_icon end-->
            </div>
            <div id="onlineService" style="display: none;">
                <div class="online_windows overz">
                    <div class="online_w_top"></div>
                    <!--online_w_top end-->
                    <div class="online_w_c overz">
                        <div class="online_bar expand" id="onlineSort1">
                            <h2>
                                <a href="javascript:viod(0)">地区加盟</a>
                            </h2>
                            <div class="online_content overz" id="onlineType1">
                                <ul class="overz">
                                    <li>
                                        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=1439391305&amp;site=qq&amp;menu=yes" class="qq_icon">王先生</a>
                                    </li>
                                    <li>电话：
                                        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=1439391305&amp;site=qq&amp;menu=yes">15021125231</a>
                                    </li>
                                </ul>
                            </div>
                            <!--online_content end-->
                        </div>
                        <!--online_bar end-->
                        <div class="online_bar expand" id="onlineSort2">
                            <h2>
                                <a href="javascript:viod(0)">售前咨询</a>
                            </h2>
                            <div class="online_content overz" id="onlineType2">
                                <ul class="overz">
                                    <li>
                                        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=1439391305&amp;site=qq&amp;menu=yes" class="qq_icon">李先生</a>
                                    </li>
                                    <li>电话：
                                        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=1439391305&amp;site=qq&amp;menu=yes">021-39517056</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!--online_bar end-->
                        <div class="online_bar expand" id="onlineSort3">
                            <h2>
                                <a href="javascript:viod(0)">售后支持</a>
                            </h2>
                            <div class="online_content overz" id="onlineType3">
                                <ul class="overz">
                                    <li>
                                        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=1439391305&amp;site=qq&amp;menu=yes" class="qq_icon">李先生</a>
                                    </li>
                                    <li>
                                        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=1439391305&amp;site=qq&amp;menu=yes" class="qq_icon">投诉专线</a>
                                    </li>
                                    <li>电话：
                                        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=1439391305&amp;site=qq&amp;menu=yes">15121033560</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!--online_bar end-->
                    </div>
                    <!--online_w_c end-->
                    <div class="online_w_bottom"></div>
                    <!--online_w_bottom end-->
                </div>
                <!--online_windows end-->
            </div>
        </div>
        {{ getBlock("scripts").add(site.scripts).toHTML() }}
        {{ getBlock("scripts").add(document.scripts).toHTML() }}
        
<link rel="stylesheet" type="text/css" href="http://s2.d2scdn.com/static/mobile_theme/style1/font-awesome/css/font-awesome.css" media="all" />
    </body>
</html>
