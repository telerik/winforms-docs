module Reading
  class CaptionGenerator < Jekyll::Generator
		def generate(site)	
			@site = site
			@converter = site.getConverterImpl(Jekyll::Converters::Markdown)	
			site.pages.each do |p|			
				createCaption(p.content)
			end
		end
	
		def createCaption(content)
			sub_string = content.scan(/(>caption)(.*)/)
			
			sub_string.each do |s|
				block ="<div class='caption'>" +  @converter.convert(s[1]) + "</div>"
				content.sub!(s[0]+s[1], block)
			end
		end
	end
end