require 'rails_helper'

RSpec.feature 'Slideshow', type: :feature do
  scenario 'shows the slideshow', js: true do
    visit root_path
    expect(page).to have_selector('[data-action="slideshow#previous"]', count: 1)
    expect(page).to have_selector('[data-action="slideshow#next"]', count: 1)
    expect(page).to have_selector('.slide--current', count: 1)
  end
end
