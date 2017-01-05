require 'rails_helper'

RSpec.describe Category, type: :model do
  describe Category do
    it "should have a name" do
      category = Category.create(name: "Cute")
      expect(category.name).to eq("Cute")
    end
end
