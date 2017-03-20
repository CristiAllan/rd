require 'rails_helper'

RSpec.describe ContactCustom, type: :model do
  it { should belong_to(:contact) }
  it { should belong_to(:custom) }

  it { should accept_nested_attributes_for(:custom) }
end
