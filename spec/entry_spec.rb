require 'entry'

describe Entry do
  let(:entry) { Entry.new("Title", "Body") }

  describe '#title' do
    it 'should return the title' do
      expect(entry.title).to eq "Title"
    end
  end

  describe '#body' do
    it 'should return the body' do
      expect(entry.body).to eq "Body"
    end
  end
end
