json.extract! recipe, :id, :name, :notes, :created_at, :updated_at
json.cooking_steps recipe.steps if cooking_mode

json.author do 
	json.email recipe.author.email
end
json.ingredients do 
	recipe.ingredients_converted convert_to_uit
end

json.url api_v1_recipe_url(recipe., format: :json)
