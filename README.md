#RubyMotion-PixateFreestyle

Pixate Freestyle gem for RubyMotion.

## Requirements

- RubyMotion 1.0 or greater (see http://www.rubymotion.com).
- The *motion-pixatefreestyle* 2.1 gem requires [PixateFreestyle Framework 2.1](https://github.com/Pixate/pixate-freestyle-ios/releases) or later.

## Setup

- Download the [Pixate Freestyle Framework](https://github.com/Pixate/pixate-freestyle-ios/releases) and copy the `PixateFreestyle.framework` folder into `vendor` directory (or alternatively just create a symbolic link). Create the `vendor` directory if it does not exist. You should have something like this.
```
$ ls vendor/PixateFreestyle.framework
/Headers/   PixateFreestyle   Resources/ Versions/
```

- Edit the `Rakefile` of your RubyMotion project and add the following require lines.
```ruby
require 'rubygems'
require 'motion-pixatefreestyle'
```

- Still in the `Rakefile`, set up the `framework` variable in your application configuration block. 
```ruby
Motion::Project::App.setup do |app|
  # ...
  app.pixatefreestyle.framework = 'vendor/PixateFreestyle.framework'
end
```

- Create the `default.css` in `resources` directory, or copy it from the pixate-blue theme.

**Note**: To install the motion-pixatefreestyle gem:

```
gem install motion-pixatefreestyle
```

Or see the [RubyGems site](https://rubygems.org/gems/motion-pixatefreestyle).

## Example

We'll take the Timer example that comes with RubyMotion and add Pixate and quickly style the application. Start by following the Setup steps above to add Pixate to the Timer project.

Type `rake` to make sure everything is good so far. You should see the Timer app running.

![Timer](https://raw.github.com/Pixate/RubyMotion-Pixate/master/Screenshots/timer_run.png)

## Initialialize PixateFreestyle

In the app/app_delegate.rb file add PixateFreestyle.initializePixateFreestyle

```ruby
def application(application, didFinishLaunchingWithOptions:launchOptions)
* PixateFreestyle.initializePixateFreestyle
end

## Add the CSS File

In the `default.css` file you added prior, let's add a simple entry:

```css
	button {
		background-color: red;
	}
```

`Rake` again and you should see this:

![Red Button](https://raw.github.com/Pixate/RubyMotion-Pixate/master/Screenshots/red_button.png)

Let's pretty this button up with the following CSS:

```css
	button {
		color            : #446620;
		background-color : linear-gradient(#87c44a, #b4da77);
		border-width     : 1px;
		border-color     : #84a254;
		border-radius    : 10px;
		font-size        : 15px;
		font-weight      : bold;
	}
```	

`Rake` again and you should see this:

![Green Button](https://raw.github.com/Pixate/RubyMotion-Pixate/master/Screenshots/green_button.png)

## Add a Styling ID

Lastly, let's change the background color. Let's add an ID to our background view. In the `timer_controller.rb` file, add the following line before the `end` of `viewDidLoad`:

```css
	view.styleId = 'myView'
```

What's we've done here is add a `styleId` to the view so we can style it by name. Now add the following CSS after your button CSS that was already added:

```css
	#myView {
		background-color: linear-gradient(#000000, #f2f4f6);
	}
```

Now you have a beautiful interface with just a few lines of CSS!

![Final App](https://raw.github.com/Pixate/RubyMotion-Pixate/master/Screenshots/background_view.png)

## Real-time Updating

See [this gist](https://gist.github.com/pcolton/4410841) for an example of how to use the real-time updating features.

## SASS

Pixate gem supports [Sass](http://sass-lang.com/) to generate the stylesheet. Create the `sass` directory and `default.scss` with the `rake pixatefreestyle:init` command. Then, `rake pixatefreestyle:sass` command generates the stylesheet from `default.scss`.

You could specify the Sass output style through `style` environment variable. For example,
```
$ rake pixatefreestyle:sass style=compressed
```

You could use `nested`, `expanded`, `compact` and `compressed` as output style.

## REPL

Pixate Freestyle gem provides a "style" method in REPL. You could change the stylesheet at the moment in REPL. For example,
```
(main)> style "button { color : blue; }"
(main)> style "button { background-color: red; border-radius: 20pt; }"
```

## Mailing List & Twitter

Keep up with notifications and announcements by joining Pixate's [mailing list](http://pixatesurvey.herokuapp.com) and [follow us](http://twitter.com/Pixate) on Twitter.


