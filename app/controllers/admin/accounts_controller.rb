class Admin::AccountsController < AdminController
  def index
    @accounts = Account.all.order('created_at DESC')
  end


  def confirm
    @account = Account.find(params[:id])
    @account.update_attributes(:confirmed_at => Time.zone.now)
    redirect_to admin_accounts_path
  end

end
