# frozen_string_literal: true

module Api
  module V1
    class BillersController < ApiController
      def index
        response = Billers::AllService.call
        render json: response, include: [:configurations]
      end

      def show
        response = Billers::FindService.call(id: params[:id])
        if response.active == true
          render json: response, include: [configurations: { only: :id }]
        else
          render json: response
        end
      end

      def create
        response = Billers::CreateUseCase.call(**params.permit!.to_h)
        render json: response
      end

      def update
        response = Billers::UpdateUseCase.call(**params.permit!.to_h)
        render json: response
      end

      def destroy
        response = Billers::DestroyUseCase.call(id: params[:id])
        render json: response
      end
    end
  end
end
