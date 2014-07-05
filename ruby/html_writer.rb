class HTMLWriter

  def self.write(string_html)
    File.open('index.html', 'w') do |file|
      file.write("#{starting_html}#{string_html}#{ending_html}")
    end
  end

private
  def self.starting_html
    "<html><head>#{js_script}</head><body>#{fb_root_html}"
  end

  def self.ending_html
    "</body></html>"
  end

  def self.fb_root_html
    "<div id='fb-root'></div>"
  end

  def self.js_script
    "<script>
      (function(d, s, id) {
        var js,
            fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s);
        js.id = id;
        js.src = '//connect.facebook.net/en_US/all.js#xfbml=1';
        fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));
    </script>"
  end

end