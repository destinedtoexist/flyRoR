class TestController < ApplicationController
    def check
        render json: request.body.read
    end
end
