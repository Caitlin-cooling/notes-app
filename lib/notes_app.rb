class Note
  def initialize
    @notes = []
  end
  def create(title, body)
    @new_note = {:title => title, :body => body}
  end
  def add(*notes)
    notes.each do |note|
      @notes << note
    end
  end
  def show(notes)
    titles = []
    @notes.each do |note|
      titles << note[:title]
    end
    titles
  end
  def choose_note(index)
    @notes[index]
  end
end
