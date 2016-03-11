if (process.argv.length > 3) {
  var Concat = require('concat-with-sourcemaps')
    , fs = require('fs')
    , fileList = [].concat(process.argv).filter(function (name, index){
      return index > 1;
    })
    , files = fileList.map(function(name) {
      return [name, fs.readFileSync(name, {encoding: 'utf-8'})];
    })
    , output = fileList[fileList.length-1].replace('src/', 'tmp/')
    , sourcemap = output+'.map'
    , concat = new Concat(true, output, '\n');

  files.forEach(function (data){
    var name = data[0]
      , content = data[1];
    concat.add(name, content);
  });

  fs.writeFileSync(output, concat.content);
  fs.writeFileSync(sourcemap, concat.content);
} else {
  console.warn("Usage: node concat.js [...FILES , LAST_FILE]")
}
