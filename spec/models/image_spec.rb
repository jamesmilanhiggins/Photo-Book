require 'rails_helper'

describe Image do
  it { should validate_presence_of :name}
  it { should validate_presence_of :description}
end
