module Features
  def sign_in
    #Want to be signed in before we can view all of the todos
    sign_in_as "person@example.com"
  end

  def sign_in_as(email)
    #Want to be signed in before we can view all of the todos
    visit root_path
    fill_in "Email", with: email
    click_on "Sign In"
  end


end