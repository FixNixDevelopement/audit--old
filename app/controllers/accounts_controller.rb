class AccountsController < ApplicationController
  # GET /accounts
  # GET /accounts.json
  def index
    # @accounts = Account.all
    @account = Account.new
    @account.users.build
    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @accounts }
    end
  end

  # GET /accounts/1
  # GET /accounts/1.json
  def show
    @account = Account.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @account }
    end
  end

  # GET /accounts/new
  # GET /accounts/new.json
  def new
    @account = Account.all
    # @account.users.build
    
    
  end

  # GET /accounts/1/edit
  def edit
    @account = Account.find(params[:id])
  end

  # POST /accounts
  # POST /accounts.json
  def create
    @account = Account.new(params[:account])
    

       if @account.save
        redirect_to root_path
    end
  end

  # PUT /accounts/1
  # PUT /accounts/1.json
  # def update
  #   @account = Account.find(params[:id])
def update
  @account = Account.find(params[:id])

   respond_to do |format|
    if @account.update_attributes(params[:account])
        format.html { redirect_to @account, notice: 'Account was successfully updated.' }
         format.json { head :no_content }
       else
        format.html { render action: "edit" }
         format.json { render json: @account.errors, status: :unprocessable_entity }
       end
     end
   end

  # DELETE /accounts/1
  # DELETE /accounts/1.json
  def destroy
    @account = Account.find(params[:id])
    @account.destroy

    respond_to do |format|
      format.html { redirect_to accounts_url }
      format.json { head :no_content }
    end
  end
end
