class HelloWorldController < UIViewController

	def viewDidLoad
		margin = 20

		@button = UIButton.buttonWithType(UIButtonTypeCustom)
		@button.frame = [[margin, 260], [view.frame.size.width - margin * 2, 40]]
    	view.addSubview(@button)
    	view.styleId = "myView"
	end

end
