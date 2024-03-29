RailsAdmin.config do |config|

  config.authorize_with do
   redirect_to main_app.root_path unless current_user.admin == true
  end

config.main_app_name = ['PrimalTV', 'Admin']

config.model User do
  list do
    field :id do # (1)
      column_width 1
    end
    field :first_name do # (1)
      column_width 10
    end
    field :last_name do # (1)
      column_width 10
    end
    field :email do # (1)
      column_width 10
    end
    field :sign_in_count do # (1)
      column_width 10
    end
  end
end






  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
