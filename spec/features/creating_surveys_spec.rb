require 'spec_helper'

feature 'creating surveys' do
  scenario 'can create a survey' do
    visit '/'

    click_link 'New Survey'

    fill_in 'Name', with: 'Survey 1'
    click_button 'Create survey'

    expect(page).to have_content('Survey has been created')
  end
end
