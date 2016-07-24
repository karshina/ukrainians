<!doctype html>
<html lang="{{langName}}">
    {{> header}}
    <body>
        {{> languages}}
        <div class="intro">
            <h1 id="headline">{{transfer.headline}}</h1>
            <p>{{transfer.description}}</p>
            <p class="headline1">{{transfer.payment}}</p>
            {{#transfer.payinfo}}
                <p class="payinfo">{{line}}</p>
            {{/transfer.payinfo}}
            <p class="headline1">{{transfer.paymentUS}}</p>
            {{#transfer.payinfoUS}}
                <p class="payinfo">{{line}}</p>
            {{/transfer.payinfoUS}}
            <p class="download"><a href="#">{{transfer.download}}</a></p>
        </div>
        <p class="footer">
            <a href="index.html">{{transfer.main}}</a>
        </p>

        {{>js}}
        {{>google_analytics}}
    </body>
</html>