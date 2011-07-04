class ConfirmationsController < Devise::PasswordsController
  skip_before_filter(:authenticate_user!)
  # PUT /resource/confirmation
  def update
    with_unconfirmed_confirmable do
      if @confirmable.has_no_password?
        @confirmable.attempt_set_password(params[:user])
        if @confirmable.valid?
          # TODO: kludge / code smell
          puts "********* #{params[:user][:first_name]}"
          puts params.inspect
          @user = User.find(@confirmable.id)
          @user.first_name = params[:user][:first_name]
          @user.last_name = params[:user][:last_name]
          @user.location = params[:user][:location]
          @user.date_of_birth = params[:user][:date_of_birth]
          puts "Trying to save user #{@user.inspect}"
          @user.save!
          do_confirm
        else
          do_show
          @confirmable.errors.clear #so that we wont render :new
        end
      else
        self.class.add_error_on(self, :email, :password_allready_set)
      end
    end

    if !@confirmable.errors.empty?
      render_with_scope :new
    end
  end

  # GET /resource/confirmation?confirmation_token=abcdef
  def show
    with_unconfirmed_confirmable do
      if @confirmable.has_no_password?
        do_show
      else
        do_confirm
      end
    end
    if !@confirmable.errors.empty?
      render_with_scope :new
    end
  end
  
  protected
  def with_unconfirmed_confirmable
    @confirmable = User.find_or_initialize_with_error_by(:confirmation_token, params[:confirmation_token])
    if !@confirmable.new_record?
      @confirmable.only_if_unconfirmed {yield}
    end
  end

  def do_show
    @confirmation_token = params[:confirmation_token]
    @requires_password = true
    self.resource = @confirmable
    render_with_scope :show
  end

  def do_confirm
    @confirmable.confirm!
    set_flash_message :notice, :confirmed
    sign_in_and_redirect(resource_name, @confirmable)
  end
end
