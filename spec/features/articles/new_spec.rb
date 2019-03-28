require "rails_helper"

describe 'new article page' do
  describe "*user links from articles index page" do
    describe '*they fill in form and submit' do
      it '*creates new article' do
        visit articles_path
        click_link "Create a New Article"

        expect(current_path).to eq(new_article_path)

        fill_in("article[title]", with: 'title_1')
        fill_in('article[body]', with: 'body_1')
        click_button('Create Article')

        new_article = Article.last

        expect(current_path).to eq(article_path(new_article))
        expect(page).to have_content(new_article.title)
        expect(page).to have_content(new_article.body)
      end
    end
  end
end
