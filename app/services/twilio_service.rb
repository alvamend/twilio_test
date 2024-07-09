class TwilioService
  @client ||= Twilio::REST::Client.new ENV["ACCOUNT_SID"], ENV["AUTH_TOKEN"]

  def self.send_message(user)
    @client.messages.create(
      body: "Hello #{user.name}. You have registered to our app!",
      from: ENV["PHONE_NUMBER"],
      to: user.phone_number,
    )
  end
end
