# feature 'User creates a recipe' do
#   scenario 'they see the recipe on the page' do
#     visit new_recipe_path

#     fill_in 'Name', with: 'My recipe'
#     click_button 'Create recipe'

#     expect(page).to have_css '.recipe-name', 'My recipe'
#   end
# end