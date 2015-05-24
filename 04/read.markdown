# Why I love Markdown

1. It's easy to write
2. It's easy to read
3. It generates beautiful HTML
4. The code I wrote to generate it is:

```ruby
  require 'rubygems'
  require 'github/markup'
  puts GitHub::Markup.render('4.markdown', File.read('./4.markdown'))
```

## More about Markdown

* [Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
* [RedCarpet Gem](https://github.com/vmg/redcarpet)
* [Github Flavored Markdown](https://github.com/github/markup)