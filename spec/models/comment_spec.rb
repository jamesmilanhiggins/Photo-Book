require 'rails_helper'

describe Comment do
  it { should belong_to :image }
  it { should validate_presence_of :author}
  it { should validate_presence_of :content}
end
