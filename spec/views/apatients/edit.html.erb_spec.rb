require 'spec_helper'

describe "apatients/edit" do
  before(:each) do
    @apatient = assign(:apatient, stub_model(Apatient,
      :first_name => "MyString",
      :last_name => "MyString",
      :c_number => 1
    ))
  end

  it "renders the edit apatient form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", apatient_path(@apatient), "post" do
      assert_select "input#apatient_first_name[name=?]", "apatient[first_name]"
      assert_select "input#apatient_last_name[name=?]", "apatient[last_name]"
      assert_select "input#apatient_c_number[name=?]", "apatient[c_number]"
    end
  end
end
