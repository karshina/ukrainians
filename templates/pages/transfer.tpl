<!doctype html>
<html lang="{{langName}}">
    {{> header}}
    <body>
        {{> languages}}
        <div class="intro">
        <h1 id="headline">{{transfer.headline}}</h1>
          <p>{{transfer.description}}</p>
        </div>
        <p class="footer">
            <a href="index.html">{{transfer.main}}</a>
        </p>

        {{>js}}
        {{>google_analytics}}
    </body>
</html>