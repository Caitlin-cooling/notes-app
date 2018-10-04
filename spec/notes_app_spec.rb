require "notes_app"

describe Note do
  describe "#create" do
    it "creates a note" do
      title = "Shopping List"
      body = "Buy grapes"
      expect(subject.create(title, body)).to eq "Shopping List"
    end
  end
  describe "#add_note" do
    it "adds the new note to a notepad" do
      title = "Shopping List"
      body = "Buy grapes"
      expect(subject.add_note(subject.create(title, body))).to eq [{ :title => "Shopping List", :body => "Buy grapes"}]
    end
  end
end
