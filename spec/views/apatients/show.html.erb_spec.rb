require 'spec_helper'

describe "apatients/show" do
  before(:each) do
    @apatient = assign(:apatient, stub_model(Apatient,
      :first_name => "First Name",
      :last_name => "Last Name",
      :c_number => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/1/)
  end
end
