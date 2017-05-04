feature 'filter by tag' do
  scenario 'user can filter bookmark list by specific tag' do
    add_link_with_tag
    add_link_with_bubbles_tag
    visit 'tags/bubbles'
    expect(page).to have_content('Bubbles_Site')
    expect(page).not_to have_content('RegExr')
  end
end
