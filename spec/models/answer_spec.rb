require 'rails_helper'

RSpec.describe Answer, type: :model do
  it { should belong_to(:question) }
  it { is_expected.to  have_db_column(:question_id) }
  it { is_expected.to  have_db_index(:question_id) }
  
  it { should validate_presence_of :body }
  it { should validate_presence_of :correct }
  it { is_expected.to  have_db_column(:body) }
end
