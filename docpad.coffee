# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {
    templateData:
        site:
            title:"上海担路网络科技有限公司"
            keywords:"担路网, 网站建设, 网站制作, 商城制作, 手机网站制作, 手机商城, 上海网站制作, 松江网站制作, 上海最便宜的网站制作, 网络推广, 网站优化"            
            description:"担路为企业提供互联网工具，让供需互动变得触手可及。我们致力于互联网信息展示/客户挖掘转化/客户关系维护，为企业打造高性价比的一体化互联网解决方案。"
            scripts:["/vendor/jquery.js","/scripts/q.js", "/scripts/scripts.js"]


        getPreparedTitle: -> if @document.title then "#{@document.title}-#{@site.title}" else @site.title
       
        # Get the prepared site/document description
        getPreparedDescription: ->
            # if we have a document description, then we should use that, otherwise use the site's description
            @document.description or @site.description

        # Get the prepared site/document keywords
        getPreparedKeywords: ->
            # Merge the document keywords with the site keywords
            @site.keywords.concat(@document.keywords or []).join(', ')

}

# Export the DocPad Configuration
module.exports = docpadConfig
