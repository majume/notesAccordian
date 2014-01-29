require 'spec_helper'

describe "pnotes/edit" do
  before(:each) do
    @pnote = assign(:pnote, stub_model(Pnote,
      :para1 => "MyText",
      :para2 => "MyText",
      :para3 => "MyText",
      :patient_id => 1
    ))
  end

  it "renders the edit pnote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pnote_path(@pnote), "post" do
      assert_select "textarea#pnote_para1[name=?]", "pnote[para1]"
      assert_select "textarea#pnote_para2[name=?]", "pnote[para2]"
      assert_select "textarea#pnote_para3[name=?]", "pnote[para3]"
      assert_select "input#pnote_patient_id[name=?]", "pnote[patient_id]"
    end
  end
end
