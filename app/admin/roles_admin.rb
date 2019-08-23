Trestle.resource(:roles) do
  search do |query|
    if query
      Role.where("email ILIKE ?", "%#{query}%")
    else
      Role.all
    end
  end

  menu do
    item :roles, icon: "fa fa-briefcase"
  end

  # Customize the table columns shown on the index view.
  
  table do
    column :id
    column :name
    column :parent_id
    column :created_at, align: :center
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |role|
    text_field :name
    text_field :parent_id
  
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
  #   params.require(:role).permit(:name, ...)
  # end
end
