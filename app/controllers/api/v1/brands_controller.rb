class Api::V1::BrandsController < ApplicationController
  before_action :authenticate_user!
end
