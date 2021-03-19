ActiveAdmin.register Hotel do
  permit_params do
    permitted = [:name, :description, :rating]
    permitted
  end
end
