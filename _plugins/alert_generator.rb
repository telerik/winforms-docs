module Reading
  class AlertGenerator < Jekyll::Generator
    def generate(site)
		@site = site
	    @converter = site.getConverterImpl(Jekyll::Converters::Markdown)
        site.pages.each do |p|
        	# green
			createAlert("tip", p.content)
			# blue
			createAlert("note", p.content)
			# orange
			createAlert("important", p.content)
			createAlert("warning", p.content)
			# red
			createAlert("caution", p.content)
		end
    end

	def createAlert(alertType, content)
		# original code (matches only only one line):
		# sub_string = content.scan(/(>#{alertType})(.*)/)

		# FIX: match entire blockquote
		sub_string = content.scan(/(>#{alertType})((.|\n[\w\*\[!<>|#])*)/)
		if sub_string.count == 0
			##puts "no " + alertType + "s"
		else
			sub_string.each do |s|
				# Note, there should be a capitalize rule for the label <span class='label'>#{alertType}</span> - text-transform: capitalize;

				# [Multiple paragraphs issue] Solution 1 (using blockqoute): between <para> elements, a <br style="display:none;"/> to be added
				# block ="<blockquote class='#{alertType}'><span class='label'>#{alertType}</span><hr/>" +  @converter.convert(s[1]) + "</blockquote>"

				# [Multiple paragraphs issue] Solution 2 (using div wrapper): between <para> elements, a > character to be added.
				block ="<div class='alert #{alertType}'><span class='label'>#{alertType}</span><hr/>" +  @converter.convert("> " + s[1]) + "</div>"

				# Old: handle slugs in blocks
				# slugsInBlock = block.scan(/.*?(%7[Bb]%slug%20([\w-]+)%{2}7[Dd])/)
				# if	slugsInBlock.count > 0
				# 	slugsInBlock.each do |slug|
				# 		targetPage = @site.pages.find {|p| p.data['slug'] == slug[1]}
				# 		if targetPage
				# 			block.sub!(slug[0], targetPage.url.sub('.html', ''))
				# 		end
				# 	end
				# end
				
				# New: handle slugs in blocks
				slugs = block.scan(/href="%7[Bb]%\s*slug[^"]*"/)
				slugs.each do |slug|
					block[block.index(slug), slug.length] = URI.decode(slug)
				end
	
				content.sub!(s[0]+s[1], block)
			end
		end
	end
  end
end

