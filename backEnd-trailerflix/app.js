const express = require('express');
const fs = require('fs');
const app = express();
const dotenv = require('dotenv');
const path = require('path');

dotenv.config();
const PORT = process.env.PORT || 3000;

app.use(express.json());

const JSON_FILE_PATH =
    process.env.JSON_FILE_PATH;

//Carga los datos del archivo JSON en formato de array
const trailerFlix = JSON.parse(fs.readFileSync(path.join(__dirname, JSON_FILE_PATH), 'utf-8'));

const ruta = path.normalize('localhost:3008/categoria/Película');

//Ruta bienvenida
app.get('/', (req, res) => {
    res.send(`<h1> Bienvenido a TrailerFlix Api </h1>`);
});

//Endpoint para listar cat{alogo}
app.get('/catalogo', (req, res) => {
    res.json(trailerFlix);
});

//Endpoint para filtar titulo
app.get('/titulo/:title', (req, res) => {
    const titulo = req.params.title.toLowerCase();
    const resultado = trailerFlix.filter(e => e.titulo.toLowerCase().includes(titulo));
    res.json(resultado)
});

//Endpoint para filtar por categoria
app.get('/categoria/:cat', (req, res) => {
    const cat = req.params.cat.toLowerCase();
    const resultado = trailerFlix.filter(e => e.categoria.toLowerCase() === cat);
    res.json(resultado);
});

//Endpoint para filtar por reparto
app.get('/reparto/:act', (req, res) => {
    const reparto = req.params.act.toLowerCase();
    const resultado = trailerFlix.filter(e => e.reparto.toLowerCase().includes(reparto)).map(e => ({ titulo: e.titulo, reparto: e.reparto }));
    res.json(resultado);
});

//Endpoint para buscar por id
app.get('/trailer/:id', (req, res) => {
    const id_trailer = req.params.id;
    const pelicula = trailerFlix.find(e => e.id === parseInt(id_trailer));

    if (pelicula) {
        const res_trailer = pelicula.trailer || 'Trailer no disponible';
        res.json({id: pelicula.id, titulo: pelicula.titulo, trailer: res_trailer})
    }else{
        res.status(404).json({mensaje: 'Contenido no encontrado'});
    }
});

//Endpoint para verificar si existe y contiene videos
app.get('/trailer/:id', (req, res) => {
    const id_trailer = req.params.id;
    const pelicula = trailerFlix.find(e => e.id === parseInt(id_trailer));

    if (pelicula) {
        const res_trailer = pelicula.trailer || 'Trailer no disponible';
        res.json({id: pelicula.id, titulo: pelicula.titulo, trailer: res_trailer})
    }else{
        res.status(404).json({mensaje: 'Contenido no encontrado'});
    }
});

//Manejo de errores
app.get('*', (req, res) => {
    res.setHeader('Content-Type', 'application/json');
    res.status(404).send(JSON.stringify({ error: 404, description: 'No se encuentra la ruta' }));
});




app.listen(PORT, () => {
    console.log(`Servidor escuchando en el puerto ${PORT}`);
});