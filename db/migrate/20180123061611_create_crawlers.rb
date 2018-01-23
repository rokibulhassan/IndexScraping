class CreateCrawlers < ActiveRecord::Migration[5.1]
  def change
    create_table :crawlers do |t|
      t.string :site_url
      t.text :contents

      t.timestamps
    end
  end
end
