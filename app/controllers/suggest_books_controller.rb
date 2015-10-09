class SuggestBooksController < ApplicationController
  before_action :set_suggest_book, only: [:show, :edit, :update, :destroy,:available]

  # GET /suggest_books
  # GET /suggest_books.json
  def index
    @suggest_books = SuggestBook.all
    @suggest_books.each do |x|
      @user = User.find(x.suggestU.to_s)
      x.suggestU=@user.name
    end
  end

  # GET /suggest_books/1
  # GET /suggest_books/1.json
  def show
  end

  # GET /suggest_books/new
  def new
    @suggest_book = SuggestBook.new
  end

  # GET /suggest_books/1/edit
  def edit
  end

  # POST /suggest_books
  # POST /suggest_books.json
  def create
    @suggest_book = SuggestBook.new(suggest_book_params)
    @suggest_book.suggestU=current_id
    respond_to do |format|
      if @suggest_book.save
        format.html {  redirect_to user_path(current_user), notice: 'Suggest book was successfully created.' }
        format.json { render :show, status: :created, location: @suggest_book }
      else
        format.html { render :new }
        format.json { render json: @suggest_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suggest_books/1
  # PATCH/PUT /suggest_books/1.json
  def update
    respond_to do |format|
      if @suggest_book.update(suggest_book_params)
        format.html { redirect_to @suggest_book, notice: 'Suggest book was successfully updated.' }
        format.json { render :show, status: :ok, location: @suggest_book }
      else
        format.html { render :edit }
        format.json { render json: @suggest_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suggest_books/1
  # DELETE /suggest_books/1.json
  def destroy
    @suggest_book.destroy
    respond_to do |format|
      format.html { redirect_to suggest_books_url, notice: 'Suggest book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def available
    @book=Book.new
    @book.isbn=@suggest_book.isbn
    @book.author=@suggest_book.author
    @book.description=@suggest_book.description
    @book.title=@suggest_book.title
    @book.status='1'
    @book.save
    @suggest_book.destroy
    redirect_to suggest_books_url, notice: 'Suggested book is available now'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suggest_book
      @suggest_book = SuggestBook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def suggest_book_params
      params.require(:suggest_book).permit(:isbn, :title, :author, :description)
    end
end
