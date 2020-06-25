# Simple.org

This repository houses the source code for the Simple app website.

## Add a new contributor to Simple.org

To add a new contributor to [simple.org/about](https://simple.org/about), do the following:

1. Add a contributor item to `data/contributors.yml`
2. Check out `locales/en.yml` for a list of available roles and countries. **Note:** Please make sure the string you set in `contributors.yml` exactly matches the key in the `en.yml` file. Otherwise the role/country will display an error.
3. Check the contributor is properly displayed in your local
4. Merge and deploy (if you have deployment issues, check "Deployment" section below)

## Development

We use [Middleman](https://middlemanapp.com/) to build the static pages which are hosted on [GitHub Pages](https://pages.github.com/).

To run the site on your own machine, simply clone the repo, install the packages necessary, and start up a Middleman server.

```
$ git clone git@github.com:resolvetosavelives/simple.org.git
$ cd simple.org
$ bundle install
$ middleman server
```

Now you should be able to go to http://localhost:4567 and see the site running locally.

## Deployment

After merging your commits to `master` and pulling the latest, run `rake publish`.

### `Error: No matching gh-pages`
Error: `src refspec gh-pages does not match any`
1. Run `git pull origin master`
2. Run `git fetch`
3. Run `rm -rf build` to delete your `build/` directory
3. Run `rake publish`

### `Error: Missing gem`
Error: `Could not find middleman-blog-4.0.3 in any of the sources`
1. Make sure you have the proper ruby version installed. **Note:** If you're using `rvm`, run `rvm use 2.5.1` to use Ruby version 2.5.1.
2. Run `rm -rf build` to delete your `build/` directory
3. Run `rake publish`

If you continue to have issues deploying, email cvallejo@resolvetosavelives.org.
