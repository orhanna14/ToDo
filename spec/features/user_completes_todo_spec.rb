require "rails_helper"

feature "User completes a Todo item" do 
  scenario "successfully" do
    sign_in

    click_on "Add a new todo"
    fill_in "Title", with: "Buy milk"
    click_on "Submit"

    click_on "Mark task complete"

    expect(page).to have_css '.todos li.completed', text: 'Buy milk'
  end
  
end