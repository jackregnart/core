class ChangeDefaultColumnName < ActiveRecord::Migration
  def up
    rename_column :shoppe_delivery_services, :default, :default_service
    rename_column :shoppe_products, :default, :default_product
  end
  
  def down
    rename_column :shoppe_delivery_services, :default_service, :default
    rename_column :shoppe_products, :default_product, :default
  end
end