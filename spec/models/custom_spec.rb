require 'rails_helper'

RSpec.describe Custom, type: :model do
  it { should belong_to(:user) }
end
