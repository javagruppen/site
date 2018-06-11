# Development environment
To develop on / contribute to Javagruppens website, we recommend that you use one of the following approaches

## Local development:

### WebStorm

(http://hadihariri.com/2014/01/04/using-webstorm-to-maintain-a-jekyll-site/)

**On Windows**

Læs: (https://jekyllrb.com/docs/windows/)

Download: (https://rubyinstaller.org/downloads/)

![run-ruby-on-windows](assets/img/run-ruby-on-windows.png)

```
gem install bundle
gem install jekyll
bundle install
bundle exec jekyll serve
```

**On Mac Os X**

LÆS: (https://stackoverflow.com/questions/39381360/how-do-i-install-ruby-gems-on-mac)

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

## Easy development (through docker):

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

** TO BE WRITTEN! **

### E-mails / "sent out" correspondence

Emails must be placed in the folder `_emails`, in the appropriate **year**-folder, and named on the form `YYYY-MM-DD-description.md`, where `YYYY` is replaced with a 4
digits year, `MM` with a two digit month and `DD` with a two digit "day of month".  

Eg. a mail correspondence (newsletter) from April 1st 2018, must go into the `_emails/2018`-folder, and file must be named.

The [Front Matter](#terminology) of the e-mail "posts" must contain two entries:
  * layout (and this must be set to email, eg: `layout: email`)
  * subject (being the subject line used in the e-mail)

# Terminology
| Term          | Description                                                                                                          |
| ------------- |:--------------------------------------------------------------------------------------------------------------------:|
| Front Matter  | The first lines of the various posts / pages, containing meta-data about the content (partitioned by 3 dashes `---`) |
