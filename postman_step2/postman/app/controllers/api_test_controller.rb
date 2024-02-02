class ApiTestController < ApplicationController
  def return
    render json: { 'status': 'success' }
  end
end
