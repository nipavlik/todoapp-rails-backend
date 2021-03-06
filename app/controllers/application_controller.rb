class ApplicationController < ActionController::API
  respond_to? :json

  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  private

  def record_not_found(err)
    render json: { error: err }, status: 404
  end
end
