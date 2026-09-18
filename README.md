# My homepage

Personal academic website built with Jekyll and adapted from
[Minimal Light](https://github.com/yaoyao-liu/minimal-light).

## Local preview

Use Ruby 3.4.1 and Bundler. With chruby installed via Homebrew:

```sh
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
chruby ruby-3.4.1
bash scripts/preview.sh
```

Open <http://127.0.0.1:4000>. The script installs missing gems in
`vendor/bundle/` and rebuilds on source changes. Refresh the browser to see
changes; restart the server after editing `_config.yml`. Stop with Ctrl-C.
`.ruby-version` enables selection when chruby auto-switching is configured.

```sh
bash scripts/preview.sh setup           # install dependencies only
bash scripts/preview.sh build           # generate _site/
bash scripts/preview.sh serve --port 4001
```

The committed lockfile pins local dependencies. Native gems require compiler
tools. Fonts and icons load from external services.

## Editing

- `index.md`: biography and section order.
- `_config.yml`: profile, links, metadata and appearance options.
- `_data/`: publications, news, education, awards, talks, projects and teaching.
- `_includes/`: section markup; teaching appears in `services.md`.
- `_layouts/homepage.html`: page layout.
- `_sass/` and `assets/css/`: styles, including light-only and alternate fonts.
- `assets/img/` and `assets/files/`: profile images, favicons and CV.

## Updating the CV

The source is `CV/cv.tex`. Install TeX Live (on Homebrew: `brew install texlive`)
and ensure `latexmk` and `pdflatex` are on `PATH`, then run:

```sh
bash scripts/build-cv.sh
```

The script runs pdfLaTeX until references settle, then atomically replaces
`assets/files/curriculum_vitae.pdf`. Failed compilation leaves the existing asset
unchanged. Intermediate files and the detailed log are kept in ignored
`CV/.build/`. No preview service is started. The script also works when called
by absolute path from another directory.

Review the resulting PDF, then commit the source changes and updated PDF
together. Run `bash scripts/preview.sh build` to include it in the site build.
GitHub Pages serves the committed PDF; it does not compile LaTeX. `CV/` is
excluded from the generated website.

Keep the five bundled ModernCV class/style files: this customized 2012 version
provides the existing layout and differs from TeX Live's installed ModernCV.
Their license notices and the source template attribution are retained.
See [CV build notes](CV/README.md) for rendering validation and dependencies.

## Deployment

Pushing `main` triggers the repository's GitHub Pages build and deployment.
Check [Actions](https://github.com/PorcupineAndrew/homepage/actions) for its
result. The recorded deployment URL is
<https://porcupineandrew.github.io/homepage/>; `_config.yml` uses
<https://yhchen.cn/> as its canonical URL. Canonical metadata does not configure
DNS or a Pages custom domain. Manage those separately in hosting settings.

The site carries its own layout and styles and does not require a remote theme.
The local Gemfile pins Jekyll 3.10; GitHub's managed Pages build controls its own
dependency set, so verify deployment as well as the local build.

## Attribution

Theme adapted from Minimal Light, whose acknowledgements include
[pages-themes/minimal](https://github.com/pages-themes/minimal),
[orderedlist/minimal](https://github.com/orderedlist/minimal), and
[al-folio](https://github.com/alshedivat/al-folio).
The repository retains its original [CC0 license](LICENSE).
