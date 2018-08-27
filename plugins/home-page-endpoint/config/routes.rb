DiscourseEndpoint::Engine.routes.draw do
  get '/social-media/instagram' , to: 'social_media#instagram'
  get '/home' , to: 'social_media#home'
end
