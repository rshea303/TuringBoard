require 'rails_helper'

describe "boards" do
  it "boards can be viewed by user" do
    visit '/'

save_and_open_page
    expect(page).to have_content('Dinner Dash')
  end
end
