# This code block is used in the sitemap.xml template - it takes the file name as an argument (provided via other liquit tags) and returns the last commit date from git in YYYY-MM-DD format
# Necesary for SEO optimization of the documentation so Google can get proper last modified dates of our articles and index them
class TimeStampTag < Liquid::Block
    def initialize(tag_name, markup, tokens)
        @text = markup
        super
    end

    def render(context)
        contents = super
        content = Liquid::Template.parse(contents).render context
		# aim for YYYY-MM-DD format https://www.google.com/sitemaps/protocol.html#lastmoddef
       `git log -1 --format=%cd --date=short #{content}`.strip
    end
end

Liquid::Template.register_tag('timestamp', TimeStampTag)
