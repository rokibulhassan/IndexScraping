require 'wombat'

class HtmlTagExtractor

  def self.crawl(site_url)
    Wombat.crawl do
      base_url site_url
      path "/"

      h1({xpath: "//h1"}, :list)
      h2({xpath: "//h2"}, :list)
      h3({xpath: "//h3"}, :list)
      links({xpath: ".//a[1]/@href"}, :list)
    end
  end

end