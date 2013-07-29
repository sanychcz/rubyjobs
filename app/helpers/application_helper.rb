module ApplicationHelper

	def full_title(page_title)
		base_title = "Ruby jobs"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end

	def hot(vacancy)
		if vacancy.hot?
			content_tag(:span, "HOT", :class => "radius alert label" )
		end
	end	

	def office(vacancy)
		if vacancy.office?
			content_tag(:span, "Office work", {:class => "radius label", :style=> "background-color:#1d0f98;" }  )
		end
	end	

	def junior(vacancy)
		if vacancy.junior?
			content_tag(:span, "Distance work", :class => "radius label" )
		end
	end	

	def distance(vacancy)
		if vacancy.distance?
			content_tag(:span, "Juniors", :class => "radius success label" )
		end
	end

	def archived(vacancy)
		if (Time.now - (vacancy.created_at + 30.days)) > 30
			content_tag(:span, I18n.t(:old_vacancy) , :style => "color: red;")
		end
	end
end
