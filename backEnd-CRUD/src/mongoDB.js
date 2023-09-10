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