<!doctype html>
<html lang="{{langName}}" prefix="og: http://ogp.me/ns#">
    {{> header}}
    <body>
        {{> languages}}
        <div class="intro">
          <h1 id="headline">{{donate.headline}}</h1>
          <p><q>{{donate.description}}</q></p>
          <p class="name">{{donate.name}}</p>
        </div>
        <p class="footer">
            {{#donate.footer}}
                <a href="{{link}}">{{text}}</a>
            {{/donate.footer}}
        </p>
        {{>js}}
        {{>google_analytics}}
    </body>
</html>
