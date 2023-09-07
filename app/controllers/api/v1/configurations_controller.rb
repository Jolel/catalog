# frozen_string_literal: true

module Api
  module V1
    class ConfigurationsController < ApiController
      def index
        response = Configurations::AllService.call
        render json: response.to_json
      end

      def show
        response = Configurations::FindService.call(id: params[:id])
        render json: response.to_json
      end

      def create
        response = Configurations::CreateUseCase.call(**params.permit!.to_h)
        render json: response.to_json
      end

      def update
        response = Configurations::UpdateUseCase.call(**params.permit!.to_h)
        render json: response.to_json
      end

      def destroy
        response = Configurations::DestroyUseCase.call(id: params[:id])
        render json: response.to_json
      end
    end
  end
end
