class SearchController < ApplicationController

    before_action :authenticate_user!

    def create
        # request.body.vertices
        polygon = "polygon"
        stringified = params[:vertices].map do |vertex|
            "(#{vertex[:lat]},#{vertex[:lng]})"
        end
        polygon += " '" + stringified.join(",") + "'"

        listings = Listing.where("#{polygon} @> coordinates")
        render json: {:listings => listings}
    end

end
