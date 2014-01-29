require 'spec_helper'

describe "apatients/new" do
  before(:each) do
    assign(:apatient, stub_model(Apatient,
      :first_name => "MyString",
      :last_name => "MyString",
      :c_number => 1
    ).as_new_record)
  end

  it "renders new apatient form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", apatients_path, "post" do
      assert_select "input#apatient_first_name[name=?]", "apatient[first_name]"
      assert_select "input#apatient_last_name[name=?]", "apatient[last_name]"
      assert_select "input#apatient_c_number[name=?]", "apatient[c_number]"
    end
  end
end
