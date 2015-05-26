module Reading
  class TabbedCodeGenerator < Jekyll::Generator
		def generate(site)	
			@site = site
			@converter = site.getConverterImpl(Jekyll::Converters::Markdown)	
			site.pages.each do |p|			
				createTabbedCode(p, p.content)
			end
		end
	
		def createTabbedCode(page, content)
			tab_start = /````\w/
			tab_end = /````\s{2,}/

			first_index = content.index(tab_start)
			last_index = first_index && content.index(tab_end, first_index)
			indexes = []
			
			while first_index && !indexes.include?(first_index)
				if last_index.nil? 
					Jekyll.logger.warn "Tabbed Code Error:", "Failed to generate tabbed code in #{page.path}" 
				end
					
				indexes.push(first_index)
				block = encode_liquid(content[first_index..last_index + 4])
				block = @converter.convert(block) 
				content[first_index..last_index + 4] = "<div class='tabbedCode'>" + block + "</div>"

				first_index = content.index(tab_start, last_index)
 				last_index = first_index && content.index(tab_end, last_index + 4)
			end
		end
		
		def encode_liquid(content)
		  content = content.gsub("{{", "{{ '{{' }}")
		end
	end
end