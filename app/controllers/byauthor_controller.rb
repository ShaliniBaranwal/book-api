class ByauthorController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        book = Book.find_by('author': params[:author])
        if (book.nil?)
            render json: "Book not available"
        else 
            render json: book
        end
    end
end
