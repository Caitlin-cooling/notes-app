class Note
  def initialize
    @notes = []
  end
  def create(title, body)
    new_note = {:title => title, :body => body}
    new_note[:title]
  end
end
