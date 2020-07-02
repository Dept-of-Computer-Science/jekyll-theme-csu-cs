# jekyll-theme-csu-cs

Welcome to your new Jekyll theme! In this directory, you'll find the files you need to be able to package up your theme into a gem. Put your layouts in `_layouts`, your includes in `_includes`, your sass files in `_sass` and any other assets in `assets`.

To experiment with this code, add some sample content and run `bundle exec jekyll serve` – this directory is setup just like a Jekyll site!

TODO: Delete this and the text above, and describe your gem


## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "jekyll-theme-csu-cs"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: jekyll-theme-csu-cs
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-theme-csu-cs

## Usage

TODO: Write usage instructions here. Describe your available layouts, includes, sass and/or assets.

### Quick List of Includes

Includes most courses should include:

* `resources/university.html`  - includes tilt, counselling, and canvasTech with headers under a 'University Resources'
header. **Most courses should include this**. 
* `policies/policiesAll.html` - lists policies related to CSU Principles of Community, includes all policies. 


General Useful Includes:
* `resources/eclipse.html` - eclipse install information.
* `resources/intelliJ.html` - intelliJ install information including student account signup, and toolbox install. 
* `resources/teams.html` - resources about Microsoft Teams, including install recommendations and links to ACNS. 
* `resources/randomJavaLinks.html` - resources about random help / practice sites for java programming. 
* `grading/wholeGradesOnly.html` - table with the 60,70,80,90 grade scale (no +/- options)
(TODO: add +/- options table)

The following includes are all part of `resources/university.html`
* `resources/canvasTech.html` - information about technical support for canvas, usually not needed as already provided
in `resources/university.html`.
* `resources/counseling.html` - information about counseling services, usually not needed as already provided
in `resources/university.html`.
* `resources/tilt.html` - information about tilt and tutoring options for students, usually not needed as already provided
in `resources/university.html`.

The following includes are all part of `policies/policiesAll.html`
* `policies/cheating.html` - includes CMU cheating examples
* `policies/copyrighted.html` - copyrighted material disclaimer from CSU Online
* `policies/daca.html` - daca student resources
* `policies/diversityStatement.html` - CSU diversity statement
* `policies/honorPledge.html` - CSU honorPledge
* `policies/netiquette.html` - CSU netiquette
* `policies/religious.html` - CSU religious observance policies
* `policies/thirdParty.html` - CSU third party disclaimer on data collection
* `policies/title9.html` - CSU title 9 policies and resources for interpersonal violence 
* `policies/universalDesign.html` - CSU universal design commitment 

The following _includes you don't usually need to directly include, as the layouts already include them

* `google-analytics.html` - Inserts Google Analytics module (active only in production environment).
* `disqus_comments.html` - Code to markup disqus comment box.
* `footer.html` - Defines the site's footer section. Contains standard CS department links, and uses
the site description in the bottom right panel. 
* `head.html` - Code-block that defines the `<head></head>` in *default* layout.
* `header.html` - Defines the site's main header section. By default, pages with a 
defined `title` attribute will have links displayed here.

### Navigation Features

#### External Links in Top Menu

If you wish to have external links (for example canvas login) in the top menu bar, put each
link in the _config.yml file under `top-nav-external`. Each link
needs to have a `title` and `url`. For example:

```yaml
top-nav-external:
  - title: Canvas
    url: http://canvas.colostate.edu
``` 

#### no-nav

By including no-nav in your site data, the page will not show up in the navigation menu, even if
the page is a top-level page. For example:

```
---
layout: page
title: Virtual Help Desk Instructions
no-nav: true
permalink: help-desk/
---
```

#### Order

While jekyll defaults to alphanumeric order, by adding the `order` attribute. For example:
```
---
layout: page
title: Resources
order: 3
permalink: resources/
---
```

### Plugins
csu-cs comes with the following plugins:
 
* [`jekyll-seo-tag`](https://github.com/jekyll/jekyll-seo-tag) plugin preinstalled to make sure 
your website gets the most useful meta tags.  
See [usage](https://github.com/jekyll/jekyll-seo-tag#usage) to know how to set it up.

* [`jekyll-feed`](https://github.com/jekyll/jekyll-feed) - A Jekyll plugin to generate an Atom (RSS-like) 
feed of your Jekyll posts

TODO: add zybooks link plugin

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/hello. 
This project is intended to be a safe, welcoming space for collaboration, and contributors are expected 
to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Development

To set up your environment to develop this theme, run `bundle install`.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` 
and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. 
Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications 
to your theme and to your content, your site will regenerate and you should see the changes in the browser 
after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` tracked with Git
 will be bundled.
To add a custom directory to your theme-gem, please edit the regexp in `jekyll-theme-csu-cs.gemspec` accordingly.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Acknowledgements 



