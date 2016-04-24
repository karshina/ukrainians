<!doctype html>
<html lang="{{langName}}">
    {{> header}}
    <body>
        {{> languages}}
        <div class="intro">
          <h1 id="headline">{{donate.headline}}</h1>
          <p>{{donate.description}}</p>
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
