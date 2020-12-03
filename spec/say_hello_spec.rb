require 'say_hello'

describe SayHello do
  let(:message_double) {double :message}
  let(:email_client_double) { double :email_client, message: message_double}
  let(:email_client_class_double) { double :email_client_class, new: email_client_double }
  let(:say_hello) { SayHello.new(email_client_class_double) }

  describe '#run' do
    it 'sends a message' do
      allow(message_double).to receive(:send).with("friend@example.com","HELLO!").and_return("Whats Up")
      expect(say_hello.run).to eq "Whats Up"
    end
  end
end
