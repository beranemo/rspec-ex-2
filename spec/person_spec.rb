require_relative "../lib/person.rb"

describe "確認 Person 宣告成功" do
  it "Person init" do
    person = Person.new("Bernard",45,"admin")
    #expect(person).to have_attributes(:name => "Big Ben", :age => 45, :role => "admin")
    #expect(person).to have_attributes("Bernard",45,"admin")
    #expect(person).to have_attribute(:name => "Bernard", :age => 45, :role => "admin")
    expect(person).to have_attributes(:name => "Bernard", :age => 45, :role => "admin")
  end
end
