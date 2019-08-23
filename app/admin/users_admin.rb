Trestle.resource(:users) do
  search do |query|
    if query
      User.where("email ILIKE ?", "%#{query}%")
    else
      User.all
    end
  end

  menu do
    item :users, icon: "fa fa-user"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :first_name
    column :last_name
    column :email
    column :role_id
    column :created_at, align: :center
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |user|
    text_field :first_name
    text_field :last_name
    text_field :email
    text_field :role_id
  
    row do
      col(xs: 6) { datetime_field :updated_at }
      col(xs: 6) { datetime_field :created_at }
    end
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:user).permit(:name, ...)
  # end
end
