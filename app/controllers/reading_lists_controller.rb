class ReadingListsController < ApplicationController
  before_action :set_reading_list, only: %i[ show update destroy remove_book ]

  # GET /reading_lists
  def index
    @reading_lists = ReadingList.all

    render json: @reading_lists
  end

  # GET /reading_lists/1
  def show
    render json: @reading_list
  end

  # POST /reading_lists
  def create
    @reading_list = ReadingList.new(reading_list_params)

    if @reading_list.save
      render json: @reading_list, status: :created, location: @reading_list
    else
      render json: @reading_list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reading_lists/1
  def update
    if @reading_list.update(reading_list_params)
      render json: @reading_list
    else
      render json: @reading_list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reading_lists/1
  def destroy
    @reading_list.destroy
  end

  # GET /reading_lists/:id/books
  def books
    begin
      reading_list = ReadingList.includes(:books).find(params[:id])
      if reading_list.nil?
        return json_error(404, 'Reading list not found')
      end
      # Access the associated books through the `books` association of the reading_list object
      books = reading_list.books
      # Convert the books array to a simple array of book titles

      render json: { 
        books: 
        books.map { |book| {
          id: book.id,
          title: book.title,
          author: book.author,
          category: book.category,
          pages: book.pages,
          published_date: book.published_date
      }}}

    rescue => error
      puts "Error fetching reading list: #{error}"
      render json: { error: 'Internal server error' }, status: 500
    end
  end

  # DELETE /reading_lists/:id/remove_book/:book_id
  def remove_book
    begin
      book_id = params[:book_id]
      book = @reading_list.books.find(book_id)

      if book.nil?
        return json_error(404, 'Book not found in the reading list')
      end

      @reading_list.books.delete(book)

      render json: { message: 'Book removed from reading list' }
    rescue => error
      puts "Error removing book from reading list: #{error}"
      render json: { error: 'Internal server error' }, status: 500
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reading_list
      @reading_list = ReadingList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reading_list_params
      params.require(:reading_list).permit(:read, :user_id)
    end
end
