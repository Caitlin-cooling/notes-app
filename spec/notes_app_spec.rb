require 'notes_app'
describe Note do
  let(:notepad) { Note.new }
  let(:note_1) { notepad.add("title", "body") }
  let(:note_2) { notepad.add("hello", "goodbye") }
  it "should allow the user to view the titles" do
    note_1
    expect(notepad.list).to eq("title")
  end

  it "should allow the user to view titles of multiple notes" do
    note_1
    note_2
    expect(notepad.list).to eq("title\nhello")
  end

  it "should show the title and body of a selected note" do
    note_1
    expect(notepad.show("title")).to eq "title\nbody"
  end

  it "should show the title and body of a selected note from the notepad" do
    note_1
    note_2
    expect(notepad.show(1)).to eq "hello\ngoodbye"
  end

end
