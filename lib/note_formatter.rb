class NoteFormatter
  def format(note = Note.new)
    "Title: #{note.title}\n#{note.body}"
  end
end
