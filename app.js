const express = require("express");
var multer = require('multer');
const bodyParser = require("body-parser")
const ApiRouter = require("./routes/api");


const app = express();
const jsonparser = bodyParser.json();

app.use(jsonparser);
app.use(bodyParser.urlencoded({
    extended: true
}));

app.use('/public', express.static('public'));

app.get("/", (req, res) => {
  res.json({ message: "ok" });
});

// app.use(ApiRouter);
app.use("/api", ApiRouter);
/* Error handler middleware */
app.use((err, req, res, next) => {
  const statusCode = err.statusCode || 500;
  console.error(err.message, err.stack);
  res.status(statusCode).json({ message: err.message });
  return;
});


const port = 8000;
app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
});