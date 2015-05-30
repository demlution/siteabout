# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {
    templateData:
        site:
            title:"上海担路网络科技有限公司"
            scripts:["/vendor/jquery.js","/scripts/q.js", "/scripts/scripts.js"]

		 getPreparedTitle: -> if @document.title then "#{@document.title} | #{@site.title}" else @site.title

}

# Export the DocPad Configuration
module.exports = docpadConfig