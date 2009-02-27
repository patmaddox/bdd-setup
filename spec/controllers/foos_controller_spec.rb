require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe FoosController do
  it "should create a person" do
    lambda {
      post :create, :person => { :first_name => "Pat", :last_name => "Maddox" }
    }.should change(Person, :count).by(1)
  end

  describe "new" do
    integrate_views

    it "should work" do
      get :new
      response.should be_success
      response.should render_template("new")
    end
  end
end
