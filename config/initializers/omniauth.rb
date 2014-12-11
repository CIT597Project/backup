# OmniAuth.config.logger = Rails.logger
#
# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :facebook, ENV['FACEBOOK_472551706219746'], ENV['FACEBOOK_07ba9ffff86c0bdaebf583b37c730262']
# end

OmniAuth.config.logger = Rails.logger
# echo $FACEBOOK_472551706219746
# export FACEBOOK_KEY="472551706219746"
# export FACEBOOK_SECRET="07ba9ffff86c0bdaebf583b37c730262"
# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :facebook, FACEBOOK_472551706219746, FACEBOOK_07ba9ffff86c0bdaebf583b37c730262
# end
# if Rails.env == "developement"
#   Rails.application.config.middleware.use OmniAuth::Builder do
#     provider :facebook, '1528970907342665', '83cdceaf84775e82d39effe38f003929'
#   end
# else
# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :facebook, '472551706219746', '07ba9ffff86c0bdaebf583b37c730262'
# end
#
# end