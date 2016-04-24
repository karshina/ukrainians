// Before running: npm install
//                 npm install -g nodemon

var YAML = require('yamljs');
var Mustache = require('mustache');
var glob = require('glob');
var path = require('path');
var fs = require('fs');

const defaultLang = "ua";
const languagesPath = "templates/languages/*.yml";
const pagesPath = "templates/pages/*.tpl";
const partialsPath = "templates/partials/*.tpl";
const outputDir = "public";

// Load languages
var languages = glob.sync(languagesPath).reduce(function(acc, fileName){
  var langName = path.basename(fileName, ".yml");
  var langData = fs.readFileSync(fileName).toString("utf-8");
  var langObject = YAML.parse(langData);
  acc[langName] = langObject;
  return acc;
}, {})

// Load partials
var partials = glob.sync(partialsPath).reduce(function(acc, fileName){
  var partialName = path.basename(fileName, ".tpl");
  var partialData = fs.readFileSync(fileName).toString("utf-8");
  acc[partialName] = partialData;
  return acc;
}, {})

// Render pages
glob.sync(pagesPath).forEach(function(fileName){
  var pageName = path.basename(fileName, ".tpl");
  var pageData = fs.readFileSync(fileName).toString("utf-8");

  for (var lang in languages) {
    var view = languages[lang];

    view.langName = lang;
    view.pageName = pageName;

    view["lang_" + lang] = true;
    view["page_" + pageName] = true;

    var output = Mustache.render(pageData, view, partials);
    var outputPageName = pageName + "_" + lang + ".html";

    if (lang == defaultLang) {
      outputPageName = pageName + ".html";
    }

    var fileDestination = outputDir + "/" + outputPageName;

    console.log("writing", fileDestination);
    fs.writeFileSync(fileDestination, output);
  }
})

if (process.argv[2]) {
  var port = parseInt(process.argv[2], 10);
  var express = require('express');
  var app = express();

  app.use(express.static(outputDir));

  app.listen(port, function () {
    console.log('Dev server listening on http://localhost:%d', port);
  });
}
