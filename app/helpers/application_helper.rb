module ApplicationHelper

	# Returns the full title on a page per page basis
	def full_title(page_title)
		base_title = "Me by Design"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
end