require 'rails_helper'

RSpec.describe Answer, type: :model do
  it {should belong_to :question}
  it {should validate_presence_of :body}
  #pending "add some examples to (or delete) #{__FILE__}"
end
