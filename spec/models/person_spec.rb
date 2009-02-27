require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Person do
  it "should not be valid without last name" do
    p = Person.new :first_name => "blah"
    p.should have_at_least(1).error_on(:last_name)
  end

  it "should measure length of string" do
    "asdf".should have(4).characters
  end
end
