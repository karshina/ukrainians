<!doctype html>
<html lang="{{langName}}">
    {{> header}}
    <body>
        {{> languages}}
        <div class="intro">
            <h1 id="headline">{{transfer.headline}}</h1>
            <p>{{transfer.description}}</p>
            <div class="payment-box">
                <p class="headline1">{{transfer.payment}}</p>
                {{#transfer.payinfo}}
                    <p class="payinfo">{{line}}</p>
                {{/transfer.payinfo}}
                <p class="headline1">{{transfer.paymentUS}}</p>
                {{#transfer.payinfoUS}}
                    <p class="payinfo">{{line}}</p>
                {{/transfer.payinfoUS}}
            </div>
            <p class="download"><a href="{{transfer.movie_url}}">{{transfer.download}}</a></p>
        </div>
        <p class="footer">
            <a href="index{{langSuffix}}.html">{{transfer.main}}</a>
        </p>

        {{>js}}
        {{>google_analytics}}
    </body>
</html>
