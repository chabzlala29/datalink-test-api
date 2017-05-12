module Api
  module V1
    class BaseController < ApplicationController
      include Response
      include ExceptionHandler
    end
  end
end
