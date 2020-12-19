class HomeController < ApplicationController

    def trash_completed
        @trash_em = List.where(:completed => true).destroy_all
        redirect_to lists_url, notice: 'All Marked Items Were Successfully Deleted' 
    end

    def trash_all
        @trash_all = List.destroy_all
        redirect_to lists_url, notice: 'All Items Were Successfully Deleted' 
    end


end