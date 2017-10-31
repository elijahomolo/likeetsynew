jQuery -> 
	Stripe.setPublishableKey($('meta[name="stripe-key"]').attr('content'))
	payment.setupForm()

payment = 
	setupForm: -> 
		$('#new_order').submit -> 
			$('input[type=submit]').attr('disabled', true)
		Stripe.card.createToken($('#new_order'), payment.handleStripeResponse)
		false

	handleStripeResponse: (status, response) -> 
		if status == 200 
			altert(response.id)
		else
			$('#stripe_error').text(resoponse.error.message).show()
			$('input[type=submit]').attr('disabled', false)
