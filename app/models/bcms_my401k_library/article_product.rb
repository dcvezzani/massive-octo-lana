class BcmsMy401kLibrary::ArticleProduct < ActiveRecord::Base
  belongs_to :section, class_name: "Cms::Category"
  belongs_to :layout, class_name: "Cms::Category"
end
