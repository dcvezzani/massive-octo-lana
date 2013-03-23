Rails.application.routes.draw do

  mount BcmsMy401kLibrary::Engine => "/bcms_my401k_library"

  mount_browsercms
end
