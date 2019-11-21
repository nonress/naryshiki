# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'noreply@naryshiki.com'
  layout 'mailer'
end
