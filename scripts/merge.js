if (process.argv.length == 4) {
  var merge = require('merge-source-map')
    , convert = require('convert-source-map')
    , fs = require('fs')
    , fileList = [].concat(process.argv).filter(function (name, index){
      return index > 1;
    })
    , files = fileList.map(function(name) {
      return fs.readFileSync(name, {encoding: 'utf-8'});
    })
    , sourcemapA = (
      convert.fromSource(files[0]) && convert.fromSource(files[0]).toObject()
    )
    , sourcemapB = (
      convert.fromSource(files[1]) && convert.fromSource(files[1]).toObject()
    )
    , output = merge(sourcemapA, sourcemapB);
  fs.writeFileSync(fileList[1], output);
} else {
  console.warn("Usage: node mergemap.js FROM TO")
}
