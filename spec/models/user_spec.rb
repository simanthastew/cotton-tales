require 'rails_helper'

RSpec.describe User, :type => :model do
  user = User.create(username: "rabbithole1", password_digest: "password")
  it "has a username" do
    expect(user.username).to eq("rabbithole1")
  end

  it "has a password digest" do
    expect(user.password_digest).to eq("password")
  end
end
