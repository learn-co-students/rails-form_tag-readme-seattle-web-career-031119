describe 'new post' do
  it 'ensures that the form route works with the /new action' do
    visit '/posts/new'
    expect(page.status_code).to eq(200)
  end

  it 'renders HTML in the /new template' do
    visit '/posts/new'
    expect(page).to have_content('Post Form')
  end
end
