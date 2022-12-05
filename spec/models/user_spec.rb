require "rails_helper"

RSpec.describe User, type: :model do
  describe "creation" do
    it "can be created" do
      user = User.create(email: "amarnath@gmail.com", password: "123456", password_confirmation: "123456")

      expect(user).to be_valid
    end
  end

  describe "validations" do
    it "should not let a user be created without an email address" do
      user = User.create(email: "nath@gmail.com", password: "123456", password_confirmation: "123456")
      user.email = nil
      expect(user).to_not be_valid
    end

      it "should not let a user be created without a password" do
        user = User.create(email: "nath@gmail.com", password: "123456", password_confirmation: "123456")
        user.password = nil
        expect(user).to_not be_valid
      end
  end
end
