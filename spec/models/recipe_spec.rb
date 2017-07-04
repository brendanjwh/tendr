describe Recipe, '#name' do
  it 'returns the name of the recipe' do
    # setup
    recipe = Recipe.new(name: 'Martini', description: 'Classic cocktail - gin or vodka', instructions: 'Chill glass, add liquor and ice and stir if gin, shake if vodka')

    # exercise
    recipe.save

    # verify
    expect(recipe.name).to eq 'Martini' 
  end


  it 'returns the description of the recipe' do
    # setup
    recipe = Recipe.new(name: 'Martini', description: 'Classic cocktail - gin or vodka', instructions: 'Chill glass, add liquor and ice and stir if gin, shake if vodka')

    # exercise
    recipe.save

    # verify
    expect(recipe.description).to eq 'Classic cocktail - gin or vodka' 
  end


  it 'returns the instructions of the recipe' do
    # setup
    recipe = Recipe.new(name: 'Martini', description: 'Classic cocktail - gin or vodka', instructions: 'Chill glass, add liquor and ice and stir if gin, shake if vodka')

    # exercise
    recipe.save

    # verify
    expect(recipe.instructions).to eq 'Chill glass, add liquor and ice and stir if gin, shake if vodka' 
  end
end