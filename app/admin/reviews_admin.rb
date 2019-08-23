Trestle.resource(:reviews) do
  search do |query|
    if query
      Review.where("content ILIKE ?", "%#{query}%")
    else
      Review.all
    end
  end

  menu do
    item :reviews, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :rating
    column :content
    column :service_id
    column :user_id
    column :created_at, align: :center
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |review|
    text_field :rating
    text_field :content
    text_field :service_id
    text_field :user_id
  
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
  #   params.require(:review).permit(:name, ...)
  # end
end
