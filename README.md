RubyMotion-Pixate
=================

Pixate gem for RubyMotion.


## Requirements

- RubyMotion 1.0 or greater (see http://www.rubymotion.com).


## Setup

1. Download the Pixate Framework package from http://www.pixate.com/ and copy the `PXEngine.framework` folder into `vendor` directory. Create the `vendor` directory if it does not exist. You should have something like this.
```
$ ls vendor/PXEngine.framework
/Headers/   PXEngine   Resources/ Versions/
```

2. Edit the `Rakefile` of your RubyMotion project and add the following require lines.
```ruby
require 'rubygems'
require 'motion-pixate'
```

3. Still in the `Rakefile`, set up the `user`, `key` and `framework` variables in your application configuration block.
```ruby
Motion::Project::App.setup do |app|
  # ...
  app.pixate.user = 'USER ID'
  app.pixate.key  = 'KEY CODE'
  app.pixate.framework = 'vendor/PXEngine.framework'
end
```

4. Create the `default.css` in `resources` directory. 


## Usage

motion-pixate provides "style" method in REPL. You could change the stylesheet at the moment in REPL.
```
(main)> style "button { color : blue; }"
(main)> style "button { background-color: red; corner-radius: 20pt; }"
```

motion-pixate supports [Sass](http://sass-lang.com/) to generate the stylesheet. Create the `sass` directory and `default.scss` with the `rake pixate:init` command. Then, `rake pixate:sass` command generates the stylesheet from `default.scss`.

You could specify the Sass output style through `style` environment variable. For example,
```
$ rake pixate:sass style=compressed
```

You could use `nested`, `expanded`, `compact` and `compressed` as output style.