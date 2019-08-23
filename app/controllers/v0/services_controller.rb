module V0
  class ServicesController < ApplicationController
    def show
      service = Service.find params[:id]
      render json: ServiceSerializer.new(service, include: [:reviews])
    end
  end
end
