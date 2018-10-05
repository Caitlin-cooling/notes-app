require "notes_app"

describe Note do
  describe "#create" do
    it "creates a note" do
      title = "Shopping List"
      body = "Buy grapes"
      expect(subject.create(title, body)).to eq ({ :title => "Shopping List", :body => "Buy grapes"})
    end
  end
  describe "#add(note)" do
    it "shows the title and body of one note that has been added to an array" do
      title = "Shopping List"
      body = "Buy grapes"
      expect(subject.add(subject.create(title, body))).to eq [[{ :title => "Shopping List", :body => "Buy grapes"}]]
    end
  end
  describe "#show" do
    it "shows the titles for 1 note" do
      note1 = subject.create("Shopping List", "Buy Grapes")
      notes = subject.add(note1)
      expect(subject.show(notes)).to eq ["Shopping List"]
    end
    it "shows the titles for 2 notes" do
      note1 = subject.create("Shopping List", "Buy Grapes")
      note2 = subject.create("To Do Today", "Go Shopping")
      notes = subject.add(note1, note2)
      expect(subject.show(notes)).to eq ["Shopping List", "To Do Today"]
    end
  end
  describe "#choose" do
    it "selects a note and shows the title and body" do
      note1 = subject.create("Shopping List", "Buy Grapes")
      note2 = subject.create("To Do Today", "Go Shopping")
      notes = subject.add(note1, note2)
      expect(subject.choose_note(1)).to eq ({:title => "To Do Today", :body => "Go Shopping"})
    end
    it "selects a note and shows the title and body" do
      note1 = subject.create("Shopping List", "Buy Grapes")
      note2 = subject.create("To Do Today", "Go Shopping")
      notes = subject.add(note1, note2)
      expect(subject.choose_note(0)).to eq ({:title => "Shopping List", :body => "Buy Grapes"})
    end
  end
end
