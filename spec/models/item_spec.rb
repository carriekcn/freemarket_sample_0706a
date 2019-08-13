require 'rails_helper'

RSpec.describe Item, type: :model do

  describe '#create' do
    let(:category) { create(:category) }

    context 'can save' do
      it 'is valid with a name, description, state, shipping_charges, shipping_method, shipping_source_area, days_ship, price, category_id, user_id' do
        item = build(:item, category: category)
        expect(item).to be_valid
      end 
    end

    context 'can not save' do
      it 'is invalid without a name' do
        item = build(:item, name: nil, category: category)
        item.valid?
        expect(item.errors[:name]).to include("can't be blank")
      end

      it "is invalid with a name that has more than 40 characters" do
        item = build(:item, name: Faker::Base.regexify("[aあ]{41}"), category: category)
        item.valid?
        expect(item.errors[:name]).to include("is too long (maximum is 40 characters)")
      end
      
      it 'is invalid without a description' do
        item = build(:item, description: nil, category: category)
        item.valid?
        expect(item.errors[:description]).to include("can't be blank")
      end

      it "is invalid with a description that has more than 1000 characters" do
        item = build(:item, description: Faker::Base.regexify("[aあ]{1001}"), category: category)
        item.valid?
        expect(item.errors[:description]).to include("is too long (maximum is 1000 characters)")
      end

      it 'is invalid without a category_id' do
        item = build(:item, category_id: "---")
        item.valid?
        expect(item.errors[:category_id]).to include("Please select")
      end

      it 'is invalid without a state' do
        item = build(:item, state: "---", category: category)
        item.valid?
        expect(item.errors[:state]).to include("Please select")
      end

      it 'is invalid without a shipping_charges' do
        item = build(:item, shipping_charges: "---", category: category)
        item.valid?
        expect(item.errors[:shipping_charges]).to include("Please select")
      end

      it 'is invalid without a shipping_method' do
        item = build(:item, shipping_method: "---", category: category)
        item.valid?
        expect(item.errors[:shipping_method]).to include("Please select")
      end

      it 'is invalid without a shipping_source_area' do
        item = build(:item, shipping_source_area: "---", category: category)
        item.valid?
        expect(item.errors[:shipping_source_area]).to include("Please select")
      end

      it 'is invalid without a days_ship' do
        item = build(:item, days_ship: "---", category: category)
        item.valid?
        expect(item.errors[:days_ship]).to include("Please select")
      end

      it 'is invalid without a price' do
        item = build(:item, price: nil, category: category)
        item.valid?
        expect(item.errors[:price]).to include("can't be blank")
      end

      it "is invalid with a price less than 299" do
        item = build(:item, price: 200, category: category)
        item.valid?
        expect(item.errors[:price]).to include("must be greater than or equal to 300")
      end

      it "is invalid with a price more than 10000000" do
        item = build(:item, price: 10000000, category: category)
        item.valid?
        expect(item.errors[:price]).to include("must be less than or equal to 9999999")
      end

    end
  end
end