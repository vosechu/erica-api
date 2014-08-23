require 'rails_helper'

RSpec.describe "activities/show", :type => :view do
  before(:each) do
    @activity = assign(:activity, Activity.create!(
      :name => "Name",
      :description => "MyText",
      :photo_url => "Photo Url",
      :costume => "Costume",
      :chronology => "Chronology",
      :notes => "MyText",
      :theme => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Photo Url/)
    expect(rendered).to match(/Costume/)
    expect(rendered).to match(/Chronology/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
