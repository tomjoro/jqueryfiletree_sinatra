# JQueryFileTree with Sinatra Example

This is an example of using JQueryFileTree with Sinatra.

This is meant to be a bare-bones minimalist example of how to get JQueryFileTree to work with Sinatra.


## Installation

This Is is a standalone project, and doesn't really require anything much except sinatra. It runs with Ruby > 1.9.2 and Sinatra.

```sh
gem install sinatra
```

Open up the config.ru file and set the root to whatever you want...
```ruby
 set :file_root, '/Users/tom/git/jqueryfiletree_sinatra/public'
```

## Notes

The directory structure with files is stored in a Hash so that it could easily be changed to represent just about anything.

Currently, if a directory can't be opened, it will fail silently and just not open it!

If you want to customize to browse something else, you should modify the Hash.
Note that everything is relative to the root.
```ruby
    # for directories
    :abs_dir => "the absolute directory"
    :rel_dir => "the relative directory that will be displayed in the link"

    # for files
    :abs_file => "the absolute path and file name (to open it)"
    :rel_file => "the name of the file (to be shown in the link"
    :file_ext => "the extension of the file (after the last .)"
```


## How's it done?

I'm using these awesome JQuery scripts:

http://www.abeautifulsite.net/blog/2008/03/jquery-file-tree/

Similar tutorial, but using Rails.

 http://www.dnamique.com/file-browser-for-ruby-on-rails/

Nice instructions on how to do rails, but doesn't sort the way I wanted, and doesn't handle the URL encoding of post params, and some other things.


## Tests

