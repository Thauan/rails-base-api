class Api::V1::VariantsController < ApplicationController
  before_action :authenticate_user!
end
