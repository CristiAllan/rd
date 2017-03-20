require 'rails_helper'

RSpec.describe Contact, type: :model do
  it { should belong_to(:user) }
  it { should have_many(:customs).through(:contact_customs) }
  it { should accept_nested_attributes_for(:contact_customs) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
end
