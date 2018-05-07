require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:question) { Question.create!(title: "New Q Title", body: "New Q Body", resolved: false) }

  describe "attributes" do
    it "has title, resolved and body attributes" do
      expect(question).to have_attributes(title: "New Q Title", body: "New Q Body", resolved: false)
    end
  end
end
