class SlugTag < Liquid::Block
    def initialize(tag_name, text, tokens)
        @text = text.strip
    end

    def render(context)
        site = context.registers[:site]
        page = site.pages.find {|p| p.data['slug'] == @text }
        if page
			## Use page.url instead of page.url.sub('.html', '') when using Jekyll server.
			page.url.sub('.html', '')
        else
            page_url = context.environments.first["page"]["url"]
            Jekyll.logger.warn "Slug:", "No page with slug `#{@text}` in #{page_url}. Consider fixing the slug or use normal link." 
			
			## Log in SlugLog.log file
			open("SlugLog.log", "a"){|f|
				f.puts "Slug: No page with slug `#{@text}`\n in #{page_url}. Consider fixing the slug or use normal link.\n\n" 
			}
	   end
    end
end

Liquid::Template.register_tag('slug', SlugTag)
