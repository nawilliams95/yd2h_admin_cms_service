class WelcomeController < ApplicationController
    def index
        render json: { status: 200, message: "Admin CMS Service API" }
    end
end
