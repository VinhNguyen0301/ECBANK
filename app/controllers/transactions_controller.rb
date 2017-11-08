class TransactionsController < ApplicationController
  before_action :authenticate_user!
  def new
    @trans = Transaction.new
  end
end
