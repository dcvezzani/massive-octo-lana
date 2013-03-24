require 'browsercms'

module BcmsMy401kLibrary
  class Engine < ::Rails::Engine
		include Cms::Module
    isolate_namespace BcmsMy401kLibrary

    config.to_prepare do
      %W{ArticleProduct Article BlogPost HeadlineBanner}.each do |resource|
        Cms::ViewContext.send(:include, BcmsMy401kLibrary.module_eval("#{resource.pluralize}Helper"))
        ApplicationHelper.send(:include, BcmsMy401kLibrary.module_eval("#{resource.pluralize}Helper"))
      end
    end

    initializer 'bcms_my401k_library.route_extensions', :after => 'action_dispatch.prepare_dispatcher' do |app|
       ActionDispatch::Routing::Mapper.send :include, BcmsMy401kLibrary::RouteExtensions
    end
  end
end
