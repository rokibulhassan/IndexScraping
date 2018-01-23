class Crawler < ApplicationRecord
  serialize :contents

  validates :site_url, presence: true, uniqueness: true

  before_save :validate_site_url
  after_create :scrape_site

  private

  def validate_site_url
    site_uri = URI(self.site_url)
    if site_uri.scheme.blank?
      self.site_url = "https://#{self.site_url}"
    end
  end

  def scrape_site
    contents = HtmlTagExtractor.crawl(self.site_url)
    self.update_column(:contents, contents)
  end
end
