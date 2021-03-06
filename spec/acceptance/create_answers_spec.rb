require 'rails_helper'

feature 'user answer', %q{
        in order to exchange my knowlege
As an authenticated user
I want to be able to create answers
} do
  given(:user) { create(:user)}
  given(:question) {create(:question)}
  scenario 'Authenticated user create answer' do
    sign_in(user)
    visit question_path(question)

    fill_in 'Yur answer', with: 'My answer'
    click_on 'Create'

    expect(current_path).to eq question_path(question)
    within '.answers' do

    expect(page).to have_content 'My answer'


  end
end
  end