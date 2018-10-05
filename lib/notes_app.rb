class Note
  def initialize
    @notes = []
  end
  def create(title, body)
    @new_note = {:title => title, :body => body}
    @new_note
  end
  def add(*notes)
    @notes << notes
  end
  def show(notes)
    titles = []
    @notes.each do |contents|
      contents. each do |note|
        titles << note[:title]
      end
    end
    titles
  end
  def choose_note(index)

  end
end

# note = Note.new
# note1 = note.create("Shopping List", "Buy Grapes")
# note2 = note.create("To Do Today", "Go Shopping")
# notes = note.add(note1, note2)
# p note.show(notes)
