Jekyll Post GeneraThor :hammer:
===============================

A small command line script built with [Thor](http://whatisthor.com/).

All the credits can go to [ichadhr](https://github.com/ichadhr) who has done the initial script ([original script gist](https://gist.github.com/ichadhr/0b4e35174c7e90c0b31b))

I just changed a couple of lines (to check if the folder exist) and added the date / hour / timezone in the post 'front matter'.
I also got rid of the editor option (which was in the initial script) as I didn't need it.
Finally, I added a directory check, which abort the script if the `posts/` folder does not exist.

At some point, I might add option to add categories straight into the command line. We'll see if needed.

## Installation

### Thor (system) installation

This installation is useful if you have several Jekyll project and you want to benefit from this post generator script for all of them.

Install the Thor gem:
```
$ gem install thor
```

Clone this repo on your computer:
```
$ git clone git@github.com:db0sch/jekyll-post-generathor.git
```

Go inside the jekyll-post-generathor folder: `cd jekyll-post-generathor`

Ask thor to install this script in your system:
```
$ thor install jekyll_post.thor
```

Thor will print out the script code, and will ask you:

```
Do you wish to continue [y/N]?
```

Just enter `y` + press Return/Enter

It will ask you to specify the name of this script in the system:

```
Please specify a name for jekyll_post.thor in the system repository [jekyll_post.thor]:
```

You can choose: `jekyll_post`

It's done.
The script is installed in your system thanks to Thor.

Now, from any folder, you can just use this command:

```
$ thor jekyll_post:new <your blog post name>
```

example:

```
$ thor jekyll_post:new My super Blog post title
```

will create the following file:

```
_posts/2017-01-04-my-super-blog-post-title.markdown
```

(if the `_posts/` directory exist, otherwise, it will abort the script.)


### Project basis installation

In your Jekyll project, add the following to your Gemfile:

```
gem 'thor'
gem 'stringex'
```

Run bundle install and add the `jekyll_post.thor` file from this repo, to your jekyll project root folder.
(you can simply create yourself the file jekyll_post.thor and copy/past the code available [here](https://raw.githubusercontent.com/db0sch/jekyll-post-generathor/master/jekyll_post.thor))

The script is now installed for this specific jekyll project.

Use the new command:
```
$ thor jekyll:new My super Blog post title
```

## Contributing

1. Fork it ( https://github.com/db0sch/jekyll-post-generathor/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
