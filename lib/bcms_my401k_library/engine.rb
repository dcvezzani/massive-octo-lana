require 'browsercms'

module BcmsMy401kLibrary
  class Engine < ::Rails::Engine
		include Cms::Module
    isolate_namespace BcmsMy401kLibrary

    initializer 'bcms_my401k_library.route_extensions', :after => 'action_dispatch.prepare_dispatcher' do |app|
       ActionDispatch::Routing::Mapper.send :include, BcmsMy401kLibrary::RouteExtensions
    end
  end
end
