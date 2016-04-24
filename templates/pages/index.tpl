<!doctype html>
<html lang="{{langName}}">
    {{> header}}
    <body>
        {{> languages}}
        <div class="intro">
          <h1 id="headline">{{index.headline}}</h1>
          <p>{{index.description}}</p>
          <p class="download">
            <a href="transfer{{langSuffix}}.html">{{index.download}}</a>
          </p>
        </div>
        <div class="icon">
          <svg viewBox="0 0 60 60">
            <g>
             <path class="play" fill="#f1f1f1" d="M24.89,40.84c-0.37,0.22-0.83,0.23-1.2,0.02s-0.6-0.61-0.6-1.04V20.2c0-0.43,0.23-0.83,0.6-1.04
             c0.37-0.21,0.83-0.21,1.2,0.02l16.35,9.81c0.36,0.21,0.58,0.6,0.58,1.02s-0.22,0.81-0.58,1.02L24.89,40.84z" />
             <path class="stroke-bg" fill="none" stroke="#999" stroke-width="4" d="M30,7C17.32,7,7,17.32,7,30
             c0,12.68,10.32,23,23,23c12.68,0,23-10.32,23-23C53,17.32,42.68,7,30,7z" />
             <path class="stroke" fill="none" stroke="#f1f1f1" stroke-width="4" d="M30,7C17.32,7,7,17.32,7,30
             c0,12.68,10.32,23,23,23c12.68,0,23-10.32,23-23C53,17.32,42.68,7,30,7z" />
            </g>
          </svg>
          <p class="trailer">{{index.trailer}}</p>
        </div>
        <div class="video none"> 
            <div class="close none"></div>
            <div id="player"></div>
            <!-- <iframe src="https://www.youtube.com/embed/Fftqr09RQ1w" frameborder="0" allowfullscreen></iframe> -->
        </div>
            <p class="footer">
              {{#index.footer}}
                <a href="{{link}}">{{text}}</a>
              {{/index.footer}}
            </p>

        {{>js}}
        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>
        {{>google_analytics}}
    </body>
</html>
