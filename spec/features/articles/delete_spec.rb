require "rails_helper"

describe 'user deletes a article' do
  describe "*user deletes from article show page" do
    describe "*links from article show page" do
      before(:each) do
        @article_1 = Article.create(title: 'title_1', body: 'body_1')
        @article_2 = Article.create(title: 'title_2', body: 'body_2')
      end

      it '*articles index page shows without article' do

        visit article_path(@article_1)
        click_link("Delete Article")


        expect(current_path).to eq(articles_path)
        within("#main-article-index") do
          expect(page).not_to have_content(@article_1.title)
          expect(page).not_to have_content(@article_1.body)
        end
      end
    end
  end
end
