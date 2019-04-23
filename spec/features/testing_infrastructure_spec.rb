feature 'Testing infrastructure' do
  scenario 'greets you with Bookmark Manager' do
    visit('/')
    expect(page).to have_content("Bookmark Manager")
  end
end
