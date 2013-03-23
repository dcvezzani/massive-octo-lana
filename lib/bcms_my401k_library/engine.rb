require 'browsercms'
require 'bcms_my401k_library/route_extensions'
module BcmsMy401kLibrary
  class Engine < ::Rails::Engine
    isolate_namespace BcmsMy401kLibrary
		include Cms::Module

    initializer 'bcms_my401k_library.route_extensions', :after => 'action_dispatch.prepare_dispatcher' do |app|
       ActionDispatch::Routing::Mapper.send :include, BcmsMy401kLibrary::RouteExtensions
    end
  end
end
