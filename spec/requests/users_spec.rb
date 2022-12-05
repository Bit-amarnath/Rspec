require "rails_helper"

RSpec.describe "users", type: :request do
  describe "create" do
    it "successfully creates a new user" do
      user = User.create(email: "amarnath@gmail.com", password: "123456", password_confirmation: "123456")

      expect(user.email).to eq("amarnath@gmail.com")
    end
  end

  # describe "GET index" do
  #   it "returns a successful response" do
  #     get :index
  #     expect(response).to be_successful
  #   end

  #   it "assigns @users" do
  #     user = User.create(name: "Test user")
  #     get :index
  #     expect(assigns(:users)).to eq([user])
  #   end

  #   it "renders the index template" do
  #     get :index
  #     expect(response).to render_template("index")
  #   end
  # end
end
