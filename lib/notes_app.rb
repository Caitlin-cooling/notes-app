class Note
  def initialize
    @notes = []
  end
  def create(title, body)
    @new_note = {:title => title, :body => body}
  end
  def add(*notes)
    @notes << notes
  end
  def show(notes)
    titles = []
    @notes.each do |contents|
      contents.each do |note|
        titles << note[:title]
      end
    end
    titles
  end
  def choose_note(index)
    @notes[0][index]
  end
end
