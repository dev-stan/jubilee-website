class OrdersController < ApplicationController
  protect_from_forgery with: :null_session  # if not using session auth
  
  def capture_order
    order_details = params[:details]
    # Process the order (e.g., update order status, send email, etc.)
    head :ok
  end
end
