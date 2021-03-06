require 'rails_helper'

RSpec.describe Event, type: :model do
  it 'has a valid factory' do
    event = build(:event)
    expect(event).to be_valid
  end
  describe Event do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:user_id) }
    it { is_expected.to validate_presence_of(:termination_date) }
  end
end
