module Api
  module V1
    class DevicesController < BaseController
      before_action :set_device, only: [:show, :update, :destroy]
      def index
        @devices = Device.ransack(params[:q]).result
        json_response(@devices)
      end

      def show
        json_response(@device)
      end

      def create
        @device = Device.create!(device_params)
        json_response(@device, :created)
      end

      def update
        @device.update(device_params)
        head :no_content
      end

      def destroy
        @device.destroy
        head :no_content
      end

      private

      def set_device
        @device = Device.find(params[:id])
      end

      def device_params
        params.require(:device).permit(*Device.updatable_fields)
      end
    end
  end
end
