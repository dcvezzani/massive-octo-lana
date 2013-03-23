class BcmsMy401kLibrary::ArticleProduct < ActiveRecord::Base
  acts_as_content_block

  belongs_to :section, class_name: "Cms::Category"
  belongs_to :layout, class_name: "Cms::Category"
end