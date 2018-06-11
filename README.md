This is the code repository containing Javagruppens website.

The website is based on Jekyll, and is automatically re-generated / deployed by Github (Github Pages). Whenever a page is committed, a new build is produced and
deployed to [javagruppen.dk](http://javagruppen.dk). **Do** however notice that a cap of a maximum of 10 builds per hours does exist.

# Development environment
To develop on / contribute to Javagruppens website, we recommend that you use one of the following approaches

## Local development:
This section contains information on setting up a development environment locally on your own machine

### On Windows
Please read: (https://jekyllrb.com/docs/windows/)

Download: (https://rubyinstaller.org/downloads/)

![run-ruby-on-windows](assets/img/run-ruby-on-windows.png)

```
gem install bundle
gem install jekyll
bundle install
bundle exec jekyll serve
```

### On Mac OSX
Please read: (https://stackoverflow.com/questions/39381360/how-do-i-install-ruby-gems-on-mac)

or follow (the condensed command-set below):

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install rbenv ruby-build
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile  
rbenv install 2.3.3
rbenv local 2.3.3
rbenv global 2.3.3
rbenv rehash
gem update --system
gem install bundle
gem install jekyll
bundle install
bundle exec jekyll serve
```

### WebStorm

To configure [WebStorm](https://www.jetbrains.com/webstorm/) for Jekyll development, read the following blog post by Hadi Hariri:

(http://hadihariri.com/2014/01/04/using-webstorm-to-maintain-a-jekyll-site/)

## Easy development (through docker):
This section contains information on developing through a docker-based setup, by:

1. Make sure Docker (and docker-compose) is properly installed on your machine 
2. Clone the repository
3. Go into the cloned repository
4. Start the jekyll bundler (through docker)
   - `docker run -p 4000:4000 -v $(pwd):/site bretfisher/jekyll-serve`

See: [bash_docker.sh](./bash_docker.sh)

# Site contents

Here's a description of "what goes where", in regards to posts, pages etc.:

### Posts

** TO BE WRITTEN! **

### Pages

Pages must be placed in a sub-folder within the `pages`-folder, with an appropriate name. The file within that folder must then be named `index.md`, if the page contains 
one or more sub pages, these can be added to the same sub-folder, with a descriptive name.

The following example illustrates the layout for a **contact**-page, with **address**- and **form**-sub pages, eg.:

```
...
- /pages
  - /contact
    - index.md
    - address.md
    - form.md
...
```

The [Front Matter](#terminology) of the pages "posts" can contain quite a few entries, to customize a few aspects of their appearance, these beingø;:
  * `layout` controls the layout of the page in question (this **is required** normally this will be set to `page`, eg: `layout: page` - unless catering to special concerns)
  * `title` sets the title of the page (and **is required**)
  * `permalink` specifies the URL path to the page (this may be omitted, or must contain an URL path, eg.: `/example/` making it accessible on `http://javagruppen.dk/example/`)
  * `feature-img` sets the banner image on the page (containing the title of the page)
  * `tags` sets a list (array) of tags to categorize the page under (must be an array, eg.: `[Test, Eaxmple, Other]`)
  * `order` the sort order of the menu-item (linking to the page from the main navigation, must be an positive integer)
  * `hide` specifies if the page should appear in the main navigation (used for hiding sub-pages, eg.: `hide: true`)

### E-mails / "sent out" correspondence

Emails must be placed in the folder `_emails`, in the appropriate **year**-folder, and named on the form `YYYY-MM-DD-description.md`, where `YYYY` is replaced with a 4
digits year, `MM` with a two digit month and `DD` with a two digit "day of month".  

Eg. a mail correspondence (newsletter) from April 1st 2018, must go into the `_emails/2018`-folder, and file must be named `2018-04-01-some-description.md` (where the description 
in this case is `some description`).

The [Front Matter](#terminology) of the e-mail "posts" must contain two entries:
  * `layout` controls the layout of the emails posts (and this **must** be set to email, eg: `layout: email`)
  * `subject` (being the subject line used in the e-mail)

# Terminology
| Term          | Description                                                                                                          |
| ------------- |:--------------------------------------------------------------------------------------------------------------------:|
| Front Matter  | The first lines of the various posts / pages, containing meta-data about the content (partitioned by 3 dashes `---`) |
