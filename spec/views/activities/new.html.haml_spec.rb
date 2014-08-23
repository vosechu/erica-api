require 'rails_helper'

RSpec.describe "activities/new", :type => :view do
  before(:each) do
    assign(:activity, Activity.new(
      :name => "MyString",
      :description => "MyText",
      :photo_url => "MyString",
      :costume => "MyString",
      :chronology => "MyString",
      :notes => "MyText",
      :theme => nil
    ))
  end

  it "renders new activity form" do
    render

    assert_select "form[action=?][method=?]", activities_path, "post" do

      assert_select "input#activity_name[name=?]", "activity[name]"

      assert_select "textarea#activity_description[name=?]", "activity[description]"

      assert_select "input#activity_photo_url[name=?]", "activity[photo_url]"

      assert_select "input#activity_costume[name=?]", "activity[costume]"

      assert_select "input#activity_chronology[name=?]", "activity[chronology]"

      assert_select "textarea#activity_notes[name=?]", "activity[notes]"

      assert_select "input#activity_theme_id[name=?]", "activity[theme_id]"
    end
  end
end
