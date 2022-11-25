class Admin::HomesController < ApplicationController

    def top
        range = Date.today.beginning_of_day..Date.today.end_of_day
        @visitor = Visitor.where(created_at: range).take
    end
end
