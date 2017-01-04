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

Install the Thor gem:
```gem install thor```

Clone this repo on your computer:
``` git clone git@github.com:db0sch/jekyll-post-generathor.git ```

Go inside the jekyll-post-generathor folder:
`cd jekyll-post-generathor`

Ask thor to install this script in your system:
```thor install jekyll_post.thor```

Thor will print out the script code, and will ask you:
```Do you wish to continue [y/N]?```

Just enter `y` + press Return/Enter

It will ask you to specify the name of this script in the system:
```Please specify a name for jekyll_post.thor in the system repository [jekyll_post.thor]:```

You can choose: `jekyll_post`

It's done.
The script is installed in your system thanks to Thor.

Now, from any folder, you can just use this command:
```thor jekyll_post:new <your blog post name>```

example:
```thor jekyll_post:new My super Blog post```
will create the following file:
```_posts/2017-01-04-my-super-blog-post.markdown```
(if the `_posts/` directory exist, otherwise, it will abort the script.)


###
