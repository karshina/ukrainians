<!doctype html>
<html lang="{{langName}}" prefix="og: http://ogp.me/ns#">
    {{> header}}
    <body>
        {{> languages}}
        <div class="intro">
          <p>{{about.description}}</p>
          <h1 class="workers">{{about.headline}}</h1>
          {{#about.cast}}
            <p><strong>{{profession}}: </strong> {{name}}</p>
          {{/about.cast}}
          <h1 class="prizes">{{about.prizes}}</h1>
          {{#about.prize}}
            <p class="festival">{{festival}}</p>
          {{/about.prize}}
        </div>
        <p class="footer">
            <a href="index{{langSuffix}}.html">{{about.main}}</a>
        </p>

        {{>js}}
        {{>google_analytics}}
    </body>
</html>