# THE UKRAINIANS

[https://karshina.github.io/ukrainians/](https://karshina.github.io/ukrainians/)

The website for the documentary movie THE UKRAINIANS. 

Directors: Leonid Kanter, Ivan Yasniy
Music: Oleksiy Byk, «Komu Vnyz»

More info:
  - [https://uk.wikipedia.org/wiki/Добровольці_Божої_чоти](https://uk.wikipedia.org/wiki/%D0%94%D0%BE%D0%B1%D1%80%D0%BE%D0%B2%D0%BE%D0%BB%D1%8C%D1%86%D1%96_%D0%91%D0%BE%D0%B6%D0%BE%D1%97_%D1%87%D0%BE%D1%82%D0%B8)
  - [https://www.facebook.com/The-UKRAINIANS-782610808490736/](https://www.facebook.com/The-UKRAINIANS-782610808490736/)
  - [https://www.facebook.com/Добровольці-Божої-Чоти-274847276048233](https://www.facebook.com/%D0%94%D0%BE%D0%B1%D1%80%D0%BE%D0%B2%D0%BE%D0%BB%D1%8C%D1%86%D1%96-%D0%91%D0%BE%D0%B6%D0%BE%D1%97-%D0%A7%D0%BE%D1%82%D0%B8-274847276048233)

# Technical details

[Github pages](https://pages.github.com/) are used to publish this site, see [gh-pages](https://github.com/karshina/ukrainians/tree/gh-pages) branch. Only ***public*** directory is published using [this technique](https://gist.github.com/cobyism/4730490). 

### Development workflow

1. Clone the repository or pull the new changes
2. `npm install` to install actual dependencies
3. `npm run dev` to run dev server (a live static site generator)
4. Or `npm run generate` to generate the static content once (everything goes to ./public) – is optional if you have just run 3.
5. Commit and push your changes
6. `npm run deploy` will force-push a subtree from ./public directory to `gh-pages` git branch 
