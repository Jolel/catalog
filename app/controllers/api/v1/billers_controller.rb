# frozen_string_literal: true

module Api
  module V1
    class BillersController < ApiController
      def index
        response = Billers::AllService.call
        render json: response.to_json
      end

      def show
        response = Billers::FindService.call(id: params[:id])
        render json: response.to_json
      end

      def create
        response = Billers::CreateUseCase.call(**params.permit!.to_h)
        render json: response.to_json
      end

      def update
        response = Billers::UpdateUseCase.call(**params.permit!.to_h)
        render json: response.to_json
      end

      def destroy
        response = Billers::DestroyUseCase.call(id: params[:id])
        render json: response.to_json
      end
    end
  end
end
