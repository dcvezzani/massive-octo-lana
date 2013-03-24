class BcmsMy401kLibrary::HeadlineBanner < ActiveRecord::Base
  acts_as_content_block

  belongs_to :section, class_name: "Cms::Category"
end
