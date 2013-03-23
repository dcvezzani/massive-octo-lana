class CreateArticles < ActiveRecord::Migration
  def change
    Cms::ContentType.create!(:name => "Article", :group_name => "Article")
    create_content_table :articles, :prefix=>false do |t|
      t.belongs_to :section
      t.belongs_to :layout
      t.text :title
      t.text :sub_title
      t.text :body, :size => (64.kilobytes + 1)
      t.text :summary, :size => (64.kilobytes + 1)
      t.text :tile_title
      t.text :tile_icon

      t.timestamps
    end
  end
end
