class Api::StateDatumController < ApplicationController
    def index
        @states = StateDatum.all
        render "index.json.jb"
    end

    def show
        @state = StateDatum.find_by(id: params[:id])
        render "show.json.jb"
    end
end
