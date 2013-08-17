module RedcarpetHelper
  def markdown(content)
    markdown ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML, :hard_wrap => true, :filter_html => true, :no_links => true, :no_images => true, :no_styles => true, 
    																															:space_after_headers => true, :no_styles => true)
    markdown.render(content).html_safe
  end
end