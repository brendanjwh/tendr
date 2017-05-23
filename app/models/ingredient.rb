class Ingredient < ApplicationRecord
  acts_as_taggable 
  acts_as_taggable_on :whisky, :sweet_vermouth, :dry_vermouth, :gin, :vodka, :mezcal, :tequila, :simple_syrup, :lime_juice, :lemon_juice, :agnostura_bitters
end
