require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Coercionlogic" do
  it "should convert blank strings to nils" do
    user = User.new
    user.name = ""
    user.save
    user.reload
    user.name.should be_nil
  end
end
