# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://ri-plus.jp"

SitemapGenerator::Sitemap.sitemaps_path = 'sitemaps/'

SitemapGenerator::Sitemap.create do

    add "/", changefreq: 'monthly', priority: 1.0
    add "/marketing" , changefreq: 'monthly', priority: 0.8
    add "/business" , changefreq: 'monthly', priority: 0.8
    add "/company" , changefreq: 'monthly', priority: 0.5
    add "/price" , changefreq: 'monthly', priority: 0.5
    add "/flow" , changefreq: 'monthly', priority: 0.5
    add "/review" , changefreq: 'monthly', priority: 0.5
    add "/question" , changefreq: 'monthly', priority: 0.5
    add "/privacy" , changefreq: 'monthly', priority: 0.5
    add "/recruit" , changefreq: 'monthly', priority: 0.7
    add "recruit/parttime3" , changefreq: 'monthly', priority: 0.7
    add "recruit/regular3" , changefreq: 'monthly', priority: 0.7
    add "recruit/appointer2" , changefreq: 'monthly', priority: 0.7

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    add "/contact" , changefreq: 'monthly', priority: 0.3

    add "recruits" , changefreq: 'monthly', priority: 0.3



  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
   #Add '/posts'

     add posts_path, :priority => 0.7, :changefreq => 'weekly'
     add columns_path, :priority => 0.7, :changefreq => 'weekly'

  # Add all posts:

     Post.find_each do |post|
       add post_path(post), :lastmod => post.updated_at
     end

     Column.find_each do |column|
       add column_path(column), :lastmod => column.updated_at
     end
end
