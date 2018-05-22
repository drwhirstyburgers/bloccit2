require 'rails_helper'

RSpec.describe Topic, type: :model do
  let(:topic) { create(:topic) }

  describe "attributes" do
    it "has a name and description attribute" do
      expect(topic).to have_attributes(name: topic.name, description: topic.description, public: topic.public)
    end

    it "is public by default" do
      expect(topic.public).to be(true)
    end
  end
end
