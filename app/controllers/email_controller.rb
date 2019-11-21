class EmailController < ApplicationController
  def index
  	@email = Email.all
  end

  def show
		@email = Email.find_by(id:params[:id])
		respond_to do |format|
      format.html { redirect_to email_index_path }
      format.js { }
    end
  end

  def create
  	@email = Email.create(object: Faker::Book.title, body: Faker::Book.title)
    puts "$" * 60
    puts "Mes params :"
    puts params
    puts "$" * 60
    if @email.save
#ces 4 lignes rajoutées pour AJAX
      respond_to do |format|
        format.html { redirect_to email_index_path}
        format.js { }
      end

      flash[:notice] = "Email created"
    else
      redirect_to root_path
      flash[:notice] = "Please try again"
    end
  end


  def destroy
    @email = Email.find(params[:id])
    @email.destroy
    #ces 4 lignes rajoutées pour AJAX
    respond_to do |format|
      format.html { redirect_to @root_path}
      format.js { }
    end
  end

  def edit 
  end

  def update
    @email = Email.find(params[:id])
    @email.update(read: !@email.read)
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
    #redirect_to root_path
  end


end
