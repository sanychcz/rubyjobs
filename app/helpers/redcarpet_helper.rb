module RedcarpetHelper
  def markdown(content)
    markdown ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML, :no_links => true, :no_images => true, :no_styles => true, 
    																															:space_after_headers => true)
    markdown.render(content).html_safe
  end
end