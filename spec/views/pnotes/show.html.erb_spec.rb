require 'spec_helper'

describe "pnotes/show" do
  before(:each) do
    @pnote = assign(:pnote, stub_model(Pnote,
      :para1 => "MyText",
      :para2 => "MyText",
      :para3 => "MyText",
      :patient_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
  end
end
