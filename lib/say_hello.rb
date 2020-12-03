class SayHello
  def initialize(email_client = EmailClient)
    @email_client = email_client
  end

  def run
    email = @email_client.new
    email.message.send(
      "friend@example.com",
      "HELLO!"
    )
  end
end
