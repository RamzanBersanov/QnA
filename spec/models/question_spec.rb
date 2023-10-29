require 'rails_helper'

RSpec.describe Question, type: :model do
  it {should have_many(:answers).dependent(:destroy) }

  it {should validate_presence_of :title }
  it {should validate_presence_of :body }
  it { is_expected.to have_db_column(:title) }
  it { is_expected.to have_db_column(:body) }
end
