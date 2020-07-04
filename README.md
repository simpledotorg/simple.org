# Simple.org
This repository houses the source code for the Simple app website.

---

# Development
## Setup
We use [Middleman](https://middlemanapp.com/) to build the static pages which are hosted on [GitHub Pages](https://pages.github.com/).

To run the site on your own machine, simply clone the repo, install the packages necessary, and start up a Middleman server.

```
$ git clone git@github.com:resolvetosavelives/simple.org.git
$ cd simple.org
$ bundle install
$ middleman server
```

## Deployment
After merging your commits to `master` and pulling the latest, run `rake publish`.

### Common deployment errors
**Error:** `src refspec gh-pages does not match any`
1. Run `git pull origin master`
2. Run `git fetch`
3. Run `rm -rf build` to delete your `build/` directory
4. Run `rake publish`

**Error:** `Could not find middleman-blog-4.0.3 in any of the sources`
1. Make sure you have the proper ruby version installed. **Note:** If you're using `rvm`, run `rvm use 2.5.1` to use Ruby version 2.5.1.
2. Run `rm -rf build` to delete your `build/` directory
3. Run `rake publish`

---

# Contribute
## Add a new contributor to Simple.org
To add a new contributor to [simple.org/about](https://simple.org/about), do the following:

1. Add a contributor item to `data/contributors.yml`
2. Open `locales/en.yml` for a list of available roles and countries. **Note:** Please make sure the string you set in `contributors.yml` exactly matches the key in the `en.yml` file. Otherwise the role/country will display an error.
3. Make sure the contributor is properly displayed in your local
4. Merge and deploy (if you have deployment issues, check "Deployment" section below)

## Create a new blog article
To add a new blog article, do the following:

1. **Create a new branch:** Pull the lastest from master and create a new branch.
2. **Create a new file:** Add a new file in `source/blog/` using the following extension and naming convention: `year-month-day-my-new-article.html.erb`.
3. **Paste front-matter:** Open an existing file and copy and paste the front-matter content to your new article.
4. **Update front-matter:** Update the front-matter variables with your content. **Note:** Make sure to wrap all variable content within `" "`.
5. **Set an author:** If the article's author is a contributor listed in `data/contributors/yml`, make sure to add their exact name in the `author` variable. If the author isn't a contributor, follow the "Add a new contributor to Simple.org" instructions above before proceeding.
6. **Add article images:** Add your article images in `/images/blog/my-new-article/`.
7. **Image placeholders:** Re-export your images with a width of `50px` and a Figma layer blur of `1`. Image placeholders are used to lazy-load images and reduce initial page load times.
8. **Create your content:** Use an existing article for reference to properly format and structure your article's content. There are no wrapping `div`s around the content—it's just a bunch of `section`s and image `div`s!
9. **Review your article:** Check your article in mobile and larger devices. Once it's ready to go feel free to merge into master, or, request a review from Claudio.

If you have any questions along the way, Slack Claudio or send him an email at cvallejo@resolvetosavelives.org
