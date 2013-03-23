module BcmsMy401kLibrary::RouteExtensions
  def mount_bcms_my401k_library
    mount BcmsMy401kLibrary::Engine => "/bcms_my401k_library"
    #match '/blog/feeds', :to=>"bcms_blog/feeds#index", :defaults=>{:format => "rss"}, :as=>'blog_feeds'
  end
  
  alias :routes_for_bcms_my401k_library :mount_bcms_my401k_library
end

