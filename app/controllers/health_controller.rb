# frozen_string_literal: true

class HealthController < ApplicationController
  def index
    render json: { message: 'v0.0.0' }
  end
end
