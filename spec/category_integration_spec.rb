require('spec_helper')

describe('the add category path', {:type => :feature})  do
	it('adds a category') do
		visit('/')
		fill_in('name', :with => 'Italian')
		click_button("Add Category")
		expect(page).to have_content('Italian')
	end
end