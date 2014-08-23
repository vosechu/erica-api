require 'rails_helper'

RSpec.describe "activities/edit", :type => :view do
  before(:each) do
    @activity = assign(:activity, Activity.create!(
      :name => "MyString",
      :description => "MyText",
      :photo_url => "MyString",
      :costume => "MyString",
      :chronology => "MyString",
      :notes => "MyText",
      :theme => nil
    ))
  end

  it "renders the edit activity form" do
    render

    assert_select "form[action=?][method=?]", activity_path(@activity), "post" do

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
