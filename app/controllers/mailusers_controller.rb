class MailusersController < ApplicationController
  # GET /mailusers
  # GET /mailusers.json
  def index
    @mailusers = Mailuser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mailusers }
    end
  end

  # GET /mailusers/1
  # GET /mailusers/1.json
  def show
    @mailuser = Mailuser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mailuser }
    end
  end

  # GET /mailusers/new
  # GET /mailusers/new.json
  def new
    @mailuser = Mailuser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mailuser }
    end
  end

  # GET /mailusers/1/edit
  def edit
    @mailuser = Mailuser.find(params[:id])
  end

  # POST /mailusers
  # POST /mailusers.json
  def create
    @mailuser = Mailuser.new(params[:mailuser])

    respond_to do |format|
      if @mailuser.save
        # Tell the UserMailer to send a welcome Email after save
        UserMailer.welcome_email(@mailuser).deliver
        format.html { redirect_to @mailuser, notice: 'Mailuser was successfully created.' }
        format.json { render json: @mailuser, status: :created, location: @mailuser }
      else
        format.html { render action: "new" }
        format.json { render json: @mailuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mailusers/1
  # PUT /mailusers/1.json
  def update
    @mailuser = Mailuser.find(params[:id])

    respond_to do |format|
      if @mailuser.update_attributes(params[:mailuser])
        format.html { redirect_to @mailuser, notice: 'Mailuser was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mailuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mailusers/1
  # DELETE /mailusers/1.json
  def destroy
    @mailuser = Mailuser.find(params[:id])
    @mailuser.destroy

    respond_to do |format|
      format.html { redirect_to mailusers_url }
      format.json { head :no_content }
    end
  end
end
