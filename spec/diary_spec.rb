require 'diary'

describe Diary do
  let(:entry_double) {double :entry, title: "Title", body: "Body"}
  let(:entry_class_double) {double :entry_class, new: entry_double}
  let(:diary) {Diary.new(entry_class_double)}

  describe '#add' do
    it 'adds an entry to entries array' do
      expect(diary.add("Title", "Body")).to include entry_double
    end
  end

  describe '#index' do
    it 'returns a list of titles' do
      diary.add("Title", "Body")
      expect(diary.index).to eq "Title"
    end
  end
end
