Deface::Override.new(
  :virtual_path => "admin/products/_form",
  :name => "add_form_elements_to_product_form_right",
  :insert_after => "[data-hook='admin_product_form_cost_price']",
  :partial => "admin/products/discount_form_elements",
  )
