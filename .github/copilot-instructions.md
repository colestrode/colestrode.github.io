This repository is a personal blog called The Effortless Manager.
It uses the Jekyll library to generate pages. It uses liquid markdown.
It is hosted with Github pages and is deployed via
Github Actions.

The script scripts/create_post.sh is used to 
create a new posts and the artifacts it needs.

Diagrams are created using Excalidraw. 
Excalidraw json documents are stored
in post specific directories in assets/excalidraw.

Post images are stored in post specific directories
in assets/article_images.

The github workflow generate_tags.yml 
creates tag all pages in the tags directory during build time.

Styling is done with Sass. Style files are found in _sass.

Markdown style conventions are found in .markdownlint.json.
