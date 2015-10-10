class PostMailer < ApplicationMailer
	default from: "from@ex.com"
	def post_email(user, post)
		@title = post.title
		mail to: user.email, subject: "Your book has been returned. You can checkout now."
	end
end
