const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send("<h1>Hello, World!</h1>");
})

app.listen(443, () => {
  console.log("Listening on port 443");
})
