require "rails_helper"

describe "user sees all articles" do
  describe "they visit /articles" do
    it "displays all articles" do
      article_1 = Article.create!(title: "Title 1", body: "Body 1")
      article_2 = Article.create!(title: "Title 2", body: "Body 2")
      
      visit articles_path

      expect(page).to have_content(article_1.title)
      expect(page).to have_content(article_2.title)
    end
  end
end
