# name: discourse-endpoint
# about: Adds special endpoints to support the custom ember home page app
# version: 1.0.0
# authors:

# load the engine
load File.expand_path('../lib/discourse_endpoint.rb', __FILE__)
load File.expand_path('../lib/discourse_endpoint/engine.rb', __FILE__)

enabled_site_setting :endpoint_enabled

# And mount the engine
Discourse::Application.routes.append do
  mount ::DiscourseEndpoint::Engine, at: '/endpoint'
end
