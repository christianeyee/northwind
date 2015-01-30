module API
	class OrdersController < ApplicationController
		respond_to :xml, :json

		def index # => GET    /orders(.:format)
			respond_with Order.all
		end

		def show # => GET    /orders/:id(.:format)
			respond_with Order.find(params[:id])
		end

		def create # => POST   /orders(.:format)
			@order = Order.new(order_params)
			@order.save
		end

		def destroy # => DELETE /orders/:id(.:format)
			respond_with Order.destroy(params[:id])
		end

		def order_params
			params.require(:order).permit(:order_id, :customer_id, :employee_id,
										  :order_date, :required_date, :shipped_date,
										  :ship_via, :freight, :ship_name,
										  :ship_address, :ship_city, :ship_region,
										  :postal_code, :ship_country)
		end
	end
end