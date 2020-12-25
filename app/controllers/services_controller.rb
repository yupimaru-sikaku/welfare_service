class ServicesController < ApplicationController

    def index
        @prefectures = Prefecture.all
    end

    
end
