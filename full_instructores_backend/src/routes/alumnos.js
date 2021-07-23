// const {rutasProtegidas} = require('../config/middleware');


// var jwt = require('jsonwebtoken')

const express = require('express');
const router = express.Router();
const bodyParser = require('body-parser'); //bodyParser nos permite reicibir parametros por POST

const mysqlConnection = require('../database.js');

// GET all
router.get('/alumnosInscriptos', (req, res) => {
    mysqlConnection.query('SELECT a.alumnos_id,a.nombres,a.apellidos,a.dni,a.celular,a.mail,a.direccion_calle,a.direccion_numero,a.direccion_barrio,a.direccion_localidad,i.fecha FROM alumnos a, inscripciones i WHERE  a.alumnos_id = i.id_alumnos ', (err, rows, fields) => {
        if (!err) {
            res.json({ 
                ok: true,
                rows: rows
            });
        } else {
            console.log(err);
        }
    });
});


router.get('/alumnos', (req, res) => {
    mysqlConnection.query('SELECT * FROM alumnos', (err, rows, fields) => {
        if (!err) {
            res.json({ 
                ok: true,
                rows: rows
            });
        } else {
            console.log(err);
        }
    });
});

// GET An alumno por Id
router.get('/alumnos/:id', (req, res) => {
    const { id } = req.params;
    mysqlConnection.query('SELECT * FROM alumnos WHERE alumnos_id = ?', [id], (err, rows, fields) => {
        if (!err) {
            res.json({ 
                ok: true,
                rows: rows
            });
        } else {
            res.status(400).json({
                ok: false,
                mensaje: 'Hubo un problema para generar la respuesta'
            });
        }
    });
});
// GET An alumno por dni
router.get('/alumnos/dni/:dni', (req, res) => {
    const { dni } = req.params;
    mysqlConnection.query('SELECT * FROM alumnos WHERE dni = ?', [dni], (err, rows, fields) => {
        if (!err) {
            res.json(rows[0]);
        } else {
            console.log(err);
        }
    });
});

// DELETE An alumno
router.delete('/alumnos/:id', (req, res) => {
    const { id } = req.params;
    mysqlConnection.query('DELETE FROM alumnos WHERE alumnos_id = ?', [id], (err, rows, fields) => {
        if (!err) {
            res.json({ 
                ok: true, 
                message:'Alumno eliminado'
            });
        } else {
            console.log(err);
        }
    });
});
// DELETE An alumno por dni
router.delete('/alumnos/dni/:dni', (req, res) => {
    const { dni } = req.params;
    mysqlConnection.query('DELETE FROM alumnos WHERE dni = ?', [dni], (err, rows, fields) => {
        if (!err) {
            res.json({ ok: true });
        } else {
            console.log(err);
        }
    });
});

// create application/json parser
var jsonParser = bodyParser.json();
// create application/x-www-form-urlencoded parser
var urlencodedParser = bodyParser.urlencoded({ extended: false });

// INSERT An instructor
router.post('/alumnos/', urlencodedParser, (req, res) => {
    const { nombres, apellidos, dni, celular, mail, direccionCalle, direccionNumero, direccionBarrio, direccionLocalidad,fechaNacimiento } = req.body;

    let sql = 'INSERT INTO alumnos(nombres, apellidos, dni,celular, mail, direccion_calle, direccion_numero, direccion_barrio, direccion_localidad,fecha_nacimiento) VALUES (?,?,?,?,?,?,?,?,?,?)';
    var valores = [nombres, apellidos, dni,celular, mail, direccionCalle, direccionNumero, direccionBarrio, direccionLocalidad,fechaNacimiento];

    mysqlConnection.query(sql, valores, (err, rows, fields) => {
        if (!err) {
            res.json({ ok: true });
            
        } else {
            console.log(err);
        }
    });
});



// Update un instructor
router.put('/instructores/dni/:dni', urlencodedParser, (request, response) => {
    const dni = request.params.dni;
    const { saldo } = request.body;
    /* response.json({
        dni: dni,
        saldo: saldo
    }); */
    let sql = 'UPDATE instructores SET saldo=' + saldo + ' WHERE dni=' + dni;
    mysqlConnection.query(sql, (err, rows, fields) => {
        if (!err) {
            response.json({ ok: true });
        } else {
            console.log(err);
        }
    });

});

// Update un curso
router.put('/alumnos/:id', urlencodedParser, (req, res) => {
    const id = req.params.id;
    const { nombres, apellidos, dni, celular, mail, direccion_calle, direccion_numero, direccion_barrio, direccion_localidad } = req.body;
   
    let sql = 'UPDATE alumnos SET nombres=?, apellidos=?, dni=?, celular=?, mail=?, direccion_calle=?, direccion_numero=?,direccion_barrio=?, direccion_localidad=? WHERE alumnos_id=' + id;
    var valores = [nombres,apellidos,dni,celular,mail,direccion_calle,direccion_numero,direccion_barrio,direccion_localidad];
    
    mysqlConnection.query(sql, valores, (err, rows, fields) => {
        if (!err) {
            res.json({
                message:"Te encontras en edicion", 
                ok: true 
            });
        } else {
            res.json({ 
                ok: false,
                error: err
            });
        }
    });

});


module.exports = router;