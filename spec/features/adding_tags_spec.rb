feature 'tag a new link' do
  scenario 'creating a link' do
    visit '/links/new'
    fill_in 'page_name', with: 'RegExr'
    fill_in 'page_url', with: 'http://regexr.com/'
    fill_in 'page_tag', with: 'coding'
    click_on 'Create new link'
    expect(Link.first.tags.map(&:name)).to include 'coding'
  end
end
