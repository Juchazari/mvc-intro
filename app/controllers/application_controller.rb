require 'pry'

class ApplicationController < Sinatra::Base

    set(:views, 'app/views')

    get('/list_airlines') do
        @airlines = Airline.all
        erb :list_airlines
    end

    get('/single_airline/:id') do
        @airline = Airline.find(params[:id])
        @tickets_for_airline = Ticket.where(airline_id: params[:id])
        erb :single_airline
    end

    post('/basura/:id') do 
        remove_airline = Airline.find(params[:i$d])
        remove_airline.destroy()
    end

end


### HTTP Method  + URL  -> Address/Function Name
### Headers -> Postage
### Body -> Contents