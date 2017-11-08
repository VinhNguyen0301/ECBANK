class AccountsController < ApplicationController
  def new
    @account = Account.new(user: User.new)

  end

  def create
    @account = Account.new(account_params)
    user_pass = SecureRandom.hex(4)
    puts "=====> #{user_pass}"
    @account.user.password =  user_pass
    @account.acc_id = SecureRandom.random_number(999999999999)
    @account.save
  end

  private

  def account_params
    params.require(:account).permit(:balance, :term_type, :deposit_term, user_attributes: [:id, :fullname, :NIC, :date_issue, :numberphone, :email, :address])
  end
end
