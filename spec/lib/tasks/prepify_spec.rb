require_relative "../../spec_helper.rb"
require "rake"

describe "prepify:promote" do
  include_context "rake"

  it "promotes a user to admin" do
    user = Fabricate(:user, :email => "user@gmail.com")
    ENV["USER_EMAIL"] = "user@gmail.com"
    rake_task.invoke
    user.reload
    expect(user.admin).to eq(true)
  end
end

describe "prepify:demote" do
  include_context "rake"

  it "demotes a user to non-admin" do
    user = Fabricate(:user, :email => "user@gmail.com", admin: true)
    ENV["USER_EMAIL"] = "user@gmail.com"
    rake_task.invoke
    user.reload
    expect(user.admin).to eq(false)
  end

end
