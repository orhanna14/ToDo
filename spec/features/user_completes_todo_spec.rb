require "rails_helper"

feature "User completes a Todo item" do 
  scenario "successfully" do
    sign_in

    create_todo "Buy milk"

    click_on "Mark task complete"
    

    expect(page).to display_completed_todo "Buy milk"
    
  end

end