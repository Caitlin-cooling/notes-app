class Note
  def initialize
    @notes = []
  end
  def create(title, body)
    @new_note = {:title => title, :body => body}
    @new_note[:title]
  end
  def add(note)
    @notes << @new_note
  end
  def show
    p @new_note[:title]
  end
end

# @notes = [{:title => "Shopping", :body => "Buy shoes"}, {:title => "Class notes", :body => "TDD is great" }]
note = Note.new
note.create("Shopping List", "Buy grapes")
note.show
