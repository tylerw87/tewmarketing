module ApplicationHelper
class CodeRayify < Redcarpet::Render::HTML
  def block_code(code, language)
    CodeRay.scan(code, language).div
  end
end

def markdown(text)
  coderayified = CodeRayify.new(:filter_html => true, 
                                :hard_wrap => true)
  options = {
    :fenced_code_blocks => true,
    :no_intra_emphasis => true,
    :autolink => true,
    :lax_html_blocks => true,
  }
  markdown_to_html = Redcarpet::Markdown.new(coderayified, options)
  markdown_to_html.render(text).html_safe
end
 before_action :redirect_to_www if Rails.env == "production"

 def redirect_to_www
   unless /www\.tewmarketing\.com/ =~ request.url
     uri = URI.parse(request.url)
     uri.host = "www.tewmarketing.com"
     redirect_to uri.to_s
   end
 end

end