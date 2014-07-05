class HTMLBuilder
  def self.build_embed_html(link_url)
    "<div class='fb-post' data-href=#{link_url} data-width='466'>
      <div class='fb-xfbml-parse-ignore'>
        <a href=#{link_url}>Post</a> by
        <a href='https://www.facebook.com/humansofnewyork'>Humans of New York</a>.
      </div>
    </div>"
  end
end