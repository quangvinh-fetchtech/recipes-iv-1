json.extract! recipe, :id, :name, :notes, :created_at, :updated_at, :ingredients
json.cooking_steps recipe.steps if cooking_mode

json.author do 
	json.email recipe.author.email
end

json.url api_v1_recipe_url(recipe, format: :json)
