require 'rails_helper'

RSpec.feature 'Slideshow', type: :feature do
  scenario 'shows the slideshow', js: true do
    visit root_path
    expect(page).to have_selector('[data-action="slideshow#previous"]', count: 1)
    expect(page).to have_selector('[data-action="slideshow#next"]', count: 1)
    expect(page).to have_selector('.slide--current', count: 1)
  end
  scenario 'next and previous buttons', js: true do
    visit root_path
    expect(find('.slide--current').text).to eq 'Boston Garden'
    click_on('Next')
    expect(find('.slide--current').text).to eq 'Camden Yards'
    click_on('Previous')
    expect(find('.slide--current').text).to eq 'Boston Garden'
  end
end
