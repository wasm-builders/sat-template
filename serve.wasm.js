const fs = require('fs'), http = require('http')

console.log("🌍 listening on 3000")
console.log(`SAT_HTTP_PORT=8080 sat "$(gp url 3000)/demo-go/demo-go.wasm"`)

http.createServer(function (req, res) {
  
  fs.readFile(__dirname + req.url, function (err,data) {
    
    if (err) {
      res.writeHead(404)
      res.end(JSON.stringify(err))
      return
    }
    res.writeHead(200)
    res.end(data)
  })
}).listen(3000)