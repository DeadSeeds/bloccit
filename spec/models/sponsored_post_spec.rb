require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do
  let(:title) { RandomData.random_sentence }
  let(:body) { RandomData.random_paragraph}
  let(:price) { 1 }
  let(:spost) { SponsoredPost.create!(title: title, body: body, price: price) }

  it { is_expected.to belong_to(:topic) }

  describe "attributes" do
    it "has title, body and price attributes" do
      expect(spost).to have_attributes(title: title, body: body, price: price)
    end
  end

end
