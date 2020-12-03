require 'note_formatter'

describe NoteFormatter do
  describe '#format' do
    it 'formats a note with title and body on seperate lines' do
      note = double :note, title: "This is the title", body: "This is the body"
      expect(subject.format(note)).to eq "Title: This is the title\nThis is the body"
    end
  end
end
