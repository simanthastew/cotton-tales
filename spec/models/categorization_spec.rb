require 'rails_helper'

RSpec.describe Categorization, type: :model do
  describe Categorization do
    it "should have a cateogory id" do
      categorization = Categorization.create(category_id: 1)
      expect(categorization.category_id).to eq(1)
    end

    it "should have a article id" do
      categorization = Categorization.create(article_id: 1)
      expect(categorization.article_id).to eq(1)
    end
  end
end