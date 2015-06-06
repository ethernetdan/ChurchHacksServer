class BraintreeController < ApplicationController
	def token
		render :text => generate_token
	end

	private
	def generate_token
		Braintree::ClientToken.generate
	end
end
