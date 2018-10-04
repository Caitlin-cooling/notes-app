require "notes_app"

describe Note do
  describe "#create" do
    it "creates a note" do
      title = "Shopping List"
      body = "Buy grapes"
      expect(subject.create(title, body)).to eq "Shopping List"
    end
  end
end
