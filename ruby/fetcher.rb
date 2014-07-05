class Fetcher
  attr_accessor :page_url, :graph_url
  def initialize(page_url)
    @page_url = page_url
    @graph_url = build_graph_url
  end

  def posts_json
    full_json = JSON.parse(response)
    full_json['data']
  end

  def response
    open(@graph_url).read
  end

private
  def build_graph_url
    url = @page_url.split("https://www.")[-1]
    "https://graph.#{url}/posts/?access_token=#{ACCESS_TOKEN}"
  end
end