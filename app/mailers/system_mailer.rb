
# # Sends admin mail for system events
# class SystemMailer < ActionMailer::Base
#   default from: Settings.site_mailer.from, return_path: Settings.site_mailer.return_path
#
#   def welcome_mail(params)
#     @send_to = params["send_to"]
#
#     mail(to: @send_to, subject: "Welcome to DreamDesign") do |format|
#       format.html { render "mailers/system_mailer/welcome_register", layout: false }
#     end
#
#
#   end
# end
