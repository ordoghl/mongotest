class AccountsController < ApplicationController

  def new
    @account = Account.new
  end

  def create
    @account = Account.new(params[:account])
    respond_to do |format|
      if @account.save
        format.html { redirect_to account_path(@account), :notice => 'Account created.'}
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @account = Account.find(params[:id])
  end

  def update
    @account = Account.find(params[:id])
    respond_to do |format|
      if @account.update_attributes(params[:account])
        format.html { redirect_to account_path(@account), :notice => 'Account updated.'}
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @account = Account.find(params[:id])
  end

  def index
    @accounts = Account.all
  end
end
