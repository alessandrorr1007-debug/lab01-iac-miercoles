const express = require("express");
const cors = require("cors");

const app = express();
const PORT = 4002;

app.use(cors());
app.use(express.json());

app.get("/", (req, res) => {
  res.send("Backend funcionando correctamente");
});

app.get("/api/saludo", (req, res) => {
  res.json({
    mensaje: "Hola desde el backend",
    contenedor: "api01",
    puerto: 4002
  });
});

app.listen(PORT, () => {
  console.log(`API corriendo en el puerto ${PORT}`);
});