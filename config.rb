# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

activate :i18n

activate :directory_indexes

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# Use relative URLs for assets (to support GitHub Pages)
activate :relative_assets
set :relative_links, true

# With alternative layout
page '/localizable/blog.html', layout: 'blog'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

helpers do
  def localized_url(url)
    "#{locale_prefix}/#{url}".gsub(/\/+/, "/")
  end

  def locale_prefix
    (I18n.locale == :en) ? "" : "/" + I18n.locale.to_s
  end

  def global_current_url
    segments = current_page.url.split('/').reject { |segment| segment.empty? }

    # Clear out the language prefix if present
    segments.shift if langs.map(&:to_s).include?(segments.first)

    segments.join("/")
  end

  def get_contributor_by_name(name)
    data.contributors.select { |contributor| contributor.name == name }.first
  end
end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

# configure :build do
#   activate :minify_css
#   activate :minify_javascript
# end

# Blog
activate :blog do |blog|
  blog.prefix = "blog"
  blog.layout = "article"
  blog.permalink = "{title}"
end