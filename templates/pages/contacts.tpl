<!doctype html>
<html lang="{{langName}}">
    {{> header}}
    <body>
        {{> languages}}
        <div class="intro">
        <h1 id="headline">{{contacts.headline}}</h1>
          {{#contacts.description}}
            <p class="contacts">{{{.}}}</p>
          {{/contacts.description}}
        </div>
        <p class="footer">
            <a href="index.html">{{contacts.main}}</a>
        </p>

        {{>js}}
        {{>google_analytics}}
    </body>
</html>
