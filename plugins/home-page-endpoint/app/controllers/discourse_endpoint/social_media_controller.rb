module DiscourseEndpoint
  class SocialMediaController < ApplicationController

    def home
      render json: {
        enable_streaming: SiteSetting.endpoint_enable_streaming,
        streaming_url:  SiteSetting.endpoint_enable_streaming_url,
        hero_image: SiteSetting.endpoint_hero_image,
        ads_image: SiteSetting.endpoint_ads_image,
      }, status: :ok
    end

    def instagram
      render json: {test: 'testing'}, status: :ok
    end

    private
      def retrieve_user_info
        oauth_info = Oauth2UserInfo.find_by(user_id: current_user.id)
        response = RestClient.get(
          endpoint_store_url,
          {
            params: {
              user_uid: oauth_info.try(:uid),
              user_token: session[:authentication]
            }
          }
        )
        render json: response, status: :ok
      end

      def endpoint_store_url
        "#{SiteSetting.endpoint_url}/api/users/retrieve_user_info.json"
      end
  end
end
