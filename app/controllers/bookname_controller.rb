class BooknameController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        bname = Book.find_by('bookname': params[:bookname])
        if (bname.nil?)
            render json: "Book not available"
        else 
            render json: bname
        end
    end
end
