# The Effortless Manager

This repository contains the Jekyll source for the **Effortless Manager** blog.
It is built with the Mediator theme and published via GitHub Pages.

## Local development

1. Install Ruby and Bundler.
2. Install dependencies:
   ```bash
   bundle install
   ```
3. Serve the site locally:
   ```bash
   bundle exec jekyll serve
   ```
   The site will be available at <http://localhost:4000>.

## Creating a new post

Use the helper script to scaffold a new article:

```bash
./scripts/create_post.sh my-new-post
```

The script creates:
- a branch named after your slug,
- `_posts/DATE-my-new-post.md` with starter front matter,
- matching directories in `assets/article_images/` and `assets/excalidraw/` for images and diagrams.

Edit the generated file, commit your changes, and open a pull request.

## GitHub Actions

The workflow `.github/workflows/generate-tags.yml` runs on pushes to `master` and regenerates tag pages.
It installs Ruby dependencies, runs `scripts/generate_tag_pages.sh`, then commits and pushes any changes back to the repository.

## Repository structure

- `_posts/` – Markdown blog posts.
- `assets/` – Images, diagrams, and other static assets.
- `_layouts/` – Page templates.
- `_includes/` – Reusable HTML snippets.
- `_sass/` – Sass partials; compiled CSS lives in `css/`.
- `scripts/` – Utility scripts for post creation and tag generation.
- `_tag_pages/` – Template files used when generating tag pages.
- `tags/` – Generated tag pages.
- `.github/` – GitHub workflow configuration.
- `initial_posts/` – Sample posts from the theme.

## License

This site is released under the [MIT License](LICENCE).
