feature 'add multiple tags to a new link' do
  scenario 'creating a link with multiple tags' do
    visit '/links/new'
    fill_in 'page_name', with: 'RegExr'
    fill_in 'page_url', with: 'http://regexr.com/'
    fill_in 'page_tag', with: 'coding, regex, makers'
    click_on 'Create new link'
    expect(Link.first.tags.map(&:name)).to include 'coding', 'regex', 'makers'
  end
end
