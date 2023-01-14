class BookController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        render json: Book.all     
    end

    # def show
    #     render json: Book.find(params[:id].to_i)
    # end

    def create
        v = !params[:bookname].empty? 
        if (v)
            p = Book.create('bookname': params[:bookname], 'author': params[:author], 'quantity': params[:quantity])
            puts p
            render html: "Book Added"
        else
            render html: "Book not Added"
        end
    end

    def update
        p = Book.find(params[:id].to_i)
        
        p.update('bookname': params[:bookname], 'author': params[:author], 'quantity': params[:quantity])

        render html: "Data Updated"
    end
    
    def destroy 
        p = Book.find(params[:id].to_i)

        p.destroy

        render html: "Data Deleted"
    end

end
