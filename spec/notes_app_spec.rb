require "notes_app"

describe Note do
  describe "#create" do
    it "creates a note" do
      title = "Shopping List"
      body = "Buy grapes"
      expect(subject.create(title, body)).to eq "Shopping List"
    end
  end
  describe "#add(note)" do
    it "creates a list of notes" do
      title = "Shopping List"
      body = "Buy grapes"
      expect(subject.add(subject.create(title, body))).to eq [{ :title => "Shopping List", :body => "Buy grapes"}]
    end
  end
  describe "#show(notes)" do
    it "shows the list of titles for notes that we have so far" do
      note = Note.new
      note.create("Shopping List", "Buy Grapes")
      expect(note.show).to eq "Shopping List"
    end
  end
end
