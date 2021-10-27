class Api::StateDatumController < ApplicationController
    def index
        @states = StateDatum.all
        render "index.json.jb"
    end
end
