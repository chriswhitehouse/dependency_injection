require 'note'

describe Note do
  describe '#display' do
    it 'displays the note, with a title and body formatted nicely' do
      note_formatter_double = double :note_formatter, format: "Title: This is the title\nThis is the body"
      note = Note.new("This is the title", "This is the body", note_formatter_double)
      expect(note.display).to eq "Title: This is the title\nThis is the body"
    end
  end
end
