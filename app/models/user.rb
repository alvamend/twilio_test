class User < ApplicationRecord
  PHONE_PATTERN = /\A\+[0-9]\d{1,14}/

  validates_presence_of :name, :phone_number
  validates :phone_number, format: { with: PHONE_PATTERN }

  after_save :account_created

  private

  def account_created
    TwilioService.send_message(self)
  end
end
