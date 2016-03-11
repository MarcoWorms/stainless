if (process.argv.length == 4) {

  var merge = require('merge-source-map')
    , convert = require('convert-source-map')
    , fs = require('fs')
    , r = /^\/\/# sourceMappingURL=.*$/gm
    , n = '\n'
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
    , sourcemap = merge(sourcemapA, sourcemapB)
    , srcFilename = fileList[1].replace('.js.map', '.js')
    , srcFile = fs.readFileSync(srcFilename, {encoding: 'utf-8'}).replace(r, n)
    , output = srcFile + '\n' + convert.fromObject(sourcemap).toComment();
  fs.writeFileSync(srcFilename, output);
} else {
  console.warn("Usage: node mergemap.js FROM TO")
}
