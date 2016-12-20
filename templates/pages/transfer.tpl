<!doctype html>
<html lang="{{langName}}" prefix="og: http://ogp.me/ns#">
    {{> header}}
    <body>
        {{> languages}}
        <div class="intro">
            <h1 id="headline">{{transfer.headline}}</h1>
            <p>{{transfer.description}}</p>
            <ul class="payment-box">
                <li class="payinfo-left">
                    <p class="headline1">{{transfer.payment}}</p>
                    {{#transfer.payinfo}}
                    <p class="payinfo">{{line}}</p>
                    {{/transfer.payinfo}}
                </li>
                <li class="payinfo-right">
                    <p class="headline1">{{transfer.paymentUS}}</p>
                    {{#transfer.payinfoUS}}
                    <p class="payinfo">{{line}}</p>
                    {{/transfer.payinfoUS}}
                </li>
            </ul>
            <p class="download">
                <a href="{{transfer.movie_url}}" onclick="ga('send', 'event', 'outbound', 'click', '{{transfer.movie_url}}')">{{transfer.download}}</a>
            </p>
        </div>
        <p class="footer">
            <a href="index{{langSuffix}}.html">{{transfer.main}}</a>
        </p>

        {{>js}}
        {{>google_analytics}}
    </body>
</html>
