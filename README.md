# jekyll-theme-csu-cs

The CSU-CS theme is based off the [Brand Style Guidelines](https://creativeservices.colostate.edu/brand-style-guide/).
It is meant for use of courses taught by the CS department at CSU, and students / faculty are also
free to use it. Please follow th CSU Branding Styl Guidelines and copy info. 


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
* `helpdesk.html` - MS Teams helpdesk instructions
* `clone.html` - Used for including a link to a git clone.   
   This include utilizes the following parameters, `url` and `text`. url is required, and will insert
   the url of the git repository after >git clone. If text is included, a link will appear
   at the bottom based on the text. For example:
   ```handlebars
  {% include clone.html url="https://github.com/CSU-CS150/lectureExamples.git" text="Lecture Examples" %}
  ```

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

### HelpDesk Hours / Table
The theme comes with a dynamic table that adjust based on screen size. An example of
formatting of the table is as follows. The classes are essential. 

```html
   <h2>Helpdesk Times</h2>
    <table id="calendar">
        <caption>For Su2020 all helpdesk hours will be online. See: <a href="/~cs150/.Summer20/help-desk/">help desk instructions</a></caption>
        <tr class="weekdays">
            <th id="time" scope="col">Time (MDT)</th>
            <th scope="col">Sunday</th>
            <th scope="col">Monday</th>
            <th scope="col">Tuesday</th>
            <th scope="col">Wednesday</th>
            <th scope="col">Thursday</th>
            <th scope="col">Friday</th>
            <th scope="col">Saturday</th>
        </tr>
        <tr>
              <td class="time">
                  8:00 AM
              </td>
              <td>

              </td>
              <td>

              </td>
              <td>

              </td>
              <td>

              </td>
              <td>

              </td>
              <td>

              </td>
              <td>

              </td>
          </tr>
          <tr>
              <td class="time">
                  9:00 AM
              </td>
              <td>

              </td>
              <td>

              </td>
              <td>

              </td>
              <td>

              </td>
              <td>

              </td>
              <td>

              </td>
              <td>

              </td>
          </tr>
          <tr>
              <td class="time">
                  10:00 AM
              </td>
              <td>

              </td>
              <td>

              </td>
              <td>

              </td>
              <td>

              </td>
              <td>

              </td>
              <td>

              </td>
              <td>

              </td>
          </tr> 
        <tr>
            <td class="time">
                11:00 AM
            </td>
            <td>

            </td>
            <td>

            </td>
            <td>

            </td>
            <td>

            </td>
            <td>

            </td>
            <td>

            </td>
            <td>

            </td>
        </tr>
        <tr>
            <td class="time">
                12:00 PM
            </td>
            <td>

            </td>
            <td>

            </td>
            <td class="">
            </td>
            <td class="">
            </td>
            <td class="">
            </td>
            <td>

            </td>
            <td>

            </td>
        </tr>
        <tr>
            <td class="time">
                1:00 PM
            </td>
            <td>

            </td>
            <td class="">
            </td>
            <td class="">
            </td>
            <td class="">
            </td>
            <td class="">
            </td>
            <td>

            </td>
            <td>

            </td>
        </tr>
        <tr>
            <td class="time">
                2:00 PM
            </td>
            <td>

            </td>
            <td class="">
            </td>
            <td class="">
            </td>
            <td class="">
            </td>
            <td class="">
            </td>
            <td>

            </td>
            <td>

            </td>
        </tr>
        <tr>
            <td class="time">
                3:00 PM
            </td>
            <td>

            </td>
            <td class="open">
                <span class="day">M</span>
                <span class="shift"> <a href="/~cs150/.Summer20/help-desk/">MS Teams</a></span>
            </td>
            <td class="open">
                <span class="day">T</span>
                <span class="shift"><a href="/~cs150/.Summer20/help-desk/">MS Teams</a></span>
            </td>
            <td class="open">
                <span class="day">W</span>
                <span class="shift"><a href="/~cs150/.Summer20/help-desk/">MS Teams</a></span>
            </td>
            <td class="open">
                <span class="day">Th</span>
                <span class="shift"><a href="/~cs150/.Summer20/help-desk/">MS Teams</a></span>
            </td>
            <td>

            </td>
            <td>

            </td>
        </tr>
        <tr>
            <td class="time">
                4:00 PM
            </td>
            <td>

            </td>
            <td class="open">
                <span class="day">M</span>
                <span class="shift"><a href="/~cs150/.Summer20/help-desk/">MS Teams</a></span>
            </td>
            <td class="open">
                <span class="day">T</span>
                <span class="shift"><a href="/~cs150/.Summer20/help-desk/">MS Teams</a></span>
            </td>
            <td class="open">
                <span class="day">W</span>
                <span class="shift"><a href="/~cs150/.Summer20/help-desk/">MS Teams</a></span>
            </td>
            <td class="open">
                <span class="day">Th</span>
                <span class="shift"><a href="/~cs150/.Summer20/help-desk/">MS Teams</a></span>
            </td>
            <td>

            </td>
            <td>

            </td>
        </tr>
        <tr>
            <td class="time">
                5:00 PM
            </td>
            <td>

            </td>
            <td>

            </td>
            <td>

            </td>
            <td>

            </td>
            <td>

            </td>
            <td>

            </td>
            <td>

            </td>
        </tr>
    </table>
```

### Enabling Google Analytics
To enable Google Analytics, add the following lines to your Jekyll site:

```
  google_analytics: UA-NNNNNNNN-N
```  
Google Analytics will only appear in production, i.e., JEKYLL_ENV=production

### Enabling Excerpts on the Home Page
To display post-excerpts on the Home Page, simply add the following to your _config.yml:
```
show_excerpts: true
```

### Plugins
csu-cs comes with the following plugins:
 
* [`jekyll-seo-tag`](https://github.com/jekyll/jekyll-seo-tag) plugin preinstalled to make sure 
your website gets the most useful meta tags.  
See [usage](https://github.com/jekyll/jekyll-seo-tag#usage) to know how to set it up.

* [`jekyll-feed`](https://github.com/jekyll/jekyll-feed) - A Jekyll plugin to generate an Atom (RSS-like) 
feed of your Jekyll posts


## Contributing

Bug reports and pull requests are welcome on GitHub at 
https://github.com/Dept-of-Computer-Science/jekyll-theme-csu-cs. 
This project is intended to be a safe, welcoming space for collaboration, and contributors are expected 
to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Development

To set up your environment to develop this theme, run `bundle install`.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` 
and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. 
Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications 
to your theme and to your content, your site will regenerate and you should see the changes in the browser 
after a refresh, just like normal.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Acknowledgements 

* jekyll-minima  - The style sheet, and svg icons are based off their original theme. Analytics comes from minima theme.
* jekyll-feed - Included as part of the gem bundle
* jekyll-seo - Included as part of the gem bundle

