module Api
  module V1
    class DevicesController < BaseController
      def index
        @devices = Device.all
        json_response(@devices)
      end
    end
  end
end
