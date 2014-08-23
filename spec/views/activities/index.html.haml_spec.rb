require 'rails_helper'

RSpec.describe "activities/index", :type => :view do
  before(:each) do
    assign(:activities, [
      Activity.create!(
        :name => "Name",
        :description => "MyText",
        :photo_url => "Photo Url",
        :costume => "Costume",
        :chronology => "Chronology",
        :notes => "MyText",
        :theme => nil
      ),
      Activity.create!(
        :name => "Name",
        :description => "MyText",
        :photo_url => "Photo Url",
        :costume => "Costume",
        :chronology => "Chronology",
        :notes => "MyText",
        :theme => nil
      )
    ])
  end

  it "renders a list of activities" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Photo Url".to_s, :count => 2
    assert_select "tr>td", :text => "Costume".to_s, :count => 2
    assert_select "tr>td", :text => "Chronology".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
