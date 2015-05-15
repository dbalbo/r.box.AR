require('spec_helper')

describe('the add recipe path', {:type => :feature}) do
	it('adds a recipe') do
		visit('/recipes')
		fill_in('name', :with => 'lasagne')
		fill_in('ingredients', :with => 'noodles, sauce, meat')
		fill_in('instructions', :with => 'cook everything')
		fill_in('rating', :with => '3')
		click_button('Add Recipe')
		expect(page).to have_content('lasagne')
	end
end

describe('the update recipe path', {:type => :feature}) do
	it('updates a recipe') do
		visit('/recipe/3')
		fill_in('name', :with => 'lasagne')
		fill_in('ingredients', :with => 'noodles, sauce, meat')
    fill_in('instructions', :with => 'cook everything')
		fill_in('rating', :with => '5')
		click_button('Update')
		#save_and_open_page just in case you want to see stuff on the page to see whats up
		expect(page).to have_content('5')
	end
end