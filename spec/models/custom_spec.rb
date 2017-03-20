require 'rails_helper'

RSpec.describe Custom, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:kind) }
  it { should have_many(:contacts).through(:contact_customs) }
  it { should validate_presence_of(:name) }

end
