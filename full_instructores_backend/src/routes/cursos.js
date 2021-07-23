const express = require('express');
const router = express.Router();
const bodyParser = require('body-parser'); //bodyParser nos permite reicibir parametros por POST
const mysqlConnection = require('../database.js');
const { response } = require('express');


// create application/json parser
var jsonParser = bodyParser.json();
// create application/x-www-form-urlencoded parser
var urlencodedParser = bodyParser.urlencoded({ extended: false });


//Api mia
router.get('/miApi', (req, res) => {

    let sql='SELECT CO.id_comisiones, CO.nombre as nombre_comision, CO.descripcion, CO.horario_dias, CO.cupo,' +
        'CU.id_cursos, CU.nombre as nombre_curso, CU.descripcion, CU.publico_destinado, CU.requisitos, CU.url_imagen_presentacion, CU.url_video_presentacion, CU.precio_inscripcion, CU.precio_cuota, CU.cantidad_cuotas, CU.id_subrubros, CU.id_instructores, CU.estado_eliminacion, CU.estado_publicacion, CU.habilita_inscripcion,' +        
        'INS.id_instructores, INS.nombres AS nombre_instructor, INS.apellidos as apellido_instructor, INS.foto_perfil, INS.cv_corto, INS.celular, INS.titulo, INS.dni, INS.mp_public_key, INS.mp_access_token '+
        'FROM comisiones AS CO ' +
        'INNER JOIN cursos AS CU ON CU.id_cursos = CO.id_cursos ' +
        'INNER JOIN instructores AS INS ON INS.id_instructores = CU.id_instructores';

    console.log(sql);
    mysqlConnection.query(sql, (err, rows, fields) => {
        if (!err) {
           
            if (rows.length > 0) {
                let cursos = [];                

                    if (cursos.filter(item => item.idCurso == curso.id_cursos).length == 0) {
                        cursos.push({                            
                            idCurso: curso.id_cursos,                           
                            nombreCurso: curso.nombre_curso,
                            descripcion: curso.descripcion,
                            publico_destinado: curso.publico_destinado,
                            requisitos: curso.requisitos,
                            url_imagen_presentacion: curso.url_imagen_presentacion,
                            url_video_presentacion:curso.url_video_presentacion,
                            precio_inscripcion: curso.precio_inscripcion,
                            precio_cuota: curso.precio_cuota,
                            cantidad_cuotas: curso.cantidad_cuotas,
                            id_subrubros: curso.id_subrubros,
                            id_instructores: curso.id_instructores,
                            estado_eliminacion: curso.estado_eliminacion,
                            estado_publicacion: curso.estado_publicacion,
                            habilita_inscripcion: curso.habilita_inscripcion,
                            
                            subrubro: {
                                idInstructor: curso.id_instructores,
                                nombre: curso.nombre_instructor,
                                apellido: curso.apellido_instructor,
                                foto: curso.foto_perfil,
                                cv: curso.cv_corto,
                                celular: curso.celular,
                                titulo: curso.titulo,
                                dni: curso.dni,
                                mp_public_key: curso.mp_public_key,
                                mp_access_token: curso.mp_access_token
                            },
                            comisiones: []                   
                        })
                    }
            
              
                res.json({
                    ok: true,
                    message: 'Cursos con comisiones e instructores',
                    cursos: cursos
                });
            } else
                res.json({
                    ok: false,                    
                    message: 'No hay cursos',
                    cursos: null
                });
        } else {
            res.json({ 
                ok: false,
                error: err
            });
        }
    });
});
   
  
//GET pagina web principal
router.get('/cursosfront', (req, res) => {

    let sql='SELECT CO.id_comisiones, CO.nombre as nombre_comision, CO.descripcion, CO.horario_dias, CO.cupo,' +
        'CU.id_cursos, CU.nombre as nombre_curso, CU.descripcion, CU.publico_destinado, CU.requisitos, CU.url_imagen_presentacion, CU.url_video_presentacion, CU.precio_inscripcion, CU.precio_cuota, CU.cantidad_cuotas, CU.id_subrubros, CU.id_instructores, CU.estado_eliminacion, CU.estado_publicacion, CU.habilita_inscripcion,' +        
        'INS.id_instructores, INS.nombres AS nombre_instructor, INS.apellidos as apellido_instructor, INS.foto_perfil, INS.cv_corto, INS.celular, INS.titulo, INS.dni, INS.mp_public_key, INS.mp_access_token '+
        'FROM comisiones AS CO ' +
        'INNER JOIN cursos AS CU ON CU.id_cursos = CO.id_cursos ' +
        'INNER JOIN instructores AS INS ON INS.id_instructores = CU.id_instructores';

    console.log(sql);
    mysqlConnection.query(sql, (err, rows, fields) => {
        if (!err) {
           
            if (rows.length > 0) {
                let cursos = [];                

                rows.forEach(curso => {
                    if (cursos.filter(item => item.idCurso == curso.id_cursos).length == 0) {
                        cursos.push({                            
                            idCurso: curso.id_cursos,                           
                            nombreCurso: curso.nombre_curso,
                            descripcion: curso.descripcion,
                            publico_destinado: curso.publico_destinado,
                            requisitos: curso.requisitos,
                            url_imagen_presentacion: curso.url_imagen_presentacion,
                            url_video_presentacion:curso.url_video_presentacion,
                            precio_inscripcion: curso.precio_inscripcion,
                            precio_cuota: curso.precio_cuota,
                            cantidad_cuotas: curso.cantidad_cuotas,
                            id_subrubros: curso.id_subrubros,
                            id_instructores: curso.id_instructores,
                            estado_eliminacion: curso.estado_eliminacion,
                            estado_publicacion: curso.estado_publicacion,
                            habilita_inscripcion: curso.habilita_inscripcion,
                            
                            instructor: {
                                idInstructor: curso.id_instructores,
                                nombre: curso.nombre_instructor,
                                apellido: curso.apellido_instructor,
                                foto: curso.foto_perfil,
                                cv: curso.cv_corto,
                                celular: curso.celular,
                                titulo: curso.titulo,
                                dni: curso.dni,
                                mp_public_key: curso.mp_public_key,
                                mp_access_token: curso.mp_access_token
                            },
                            comisiones: []                   
                        })
                    }
                });
                cursos.forEach(curso => {                        
                        let comisiones = rows.filter(comision => curso.idCurso == comision.id_cursos);                        
                        if (comisiones.length > 0) {
                            comisiones.forEach(com => {
                                curso.comisiones.push({
                                    idComision: com.id_comisiones,
                                    nombre: com.nombre_comision,
                                    decripcion: com.decripcion,
                                    horario: com.horario_dias,
                                    cupo: com.cupo
                                });    
                            });                            
                        }
                });
                res.json({
                    ok: true,
                    message: 'Cursos con comisiones e instructores',
                    cursos: cursos
                });
            } else
                res.json({
                    ok: false,                    
                    message: 'No hay cursos',
                    cursos: null
                });
        } else {
            res.json({ 
                ok: false,
                error: err
            });
        }
    });
});

// GET all cursos
router.get('/cursos', (req, res) => {
    mysqlConnection.query('SELECT * FROM cursos', (err, rows, fields) => {
        if (!err) {
            res.json({ 
                ok: true,
                rows: rows
            });
        } else {
            res.json({ 
                ok: false,
                error: err
            });
        }
    });
});


// GET An curso por Id
router.get('/cursos/:id', (req, res) => {
    const { id } = req.params;
    mysqlConnection.query('SELECT * FROM cursos WHERE id_cursos = ?', [id], (err, rows, fields) => {
        if (!err) {
            res.json({ 
               // ok: true,
                rows: rows
            });
        } else {
            res.json({ 
                ok: false,
                error: err
            });
        }
    });
});

// GET An curso AND subrubros por Id
router.get('/cursosSubrubros/:id', (req, res) => {
    const { id } = req.params;
    mysqlConnection.query('SELECT c.id_cursos,c.nombre,c.descripcion,c.publico_destinado,c.requisitos,c.url_imagen_presentacion,c.url_video_presentacion,c.precio_inscripcion,c.precio_cuota,c.cantidad_cuotas,c.id_subrubros,c.id_instructores,c.estado_eliminacion,c.estado_publicacion,c.habilita_inscripcion,s.id_subrubros AS idsubrubros ,s.nombre AS nombre_subrubros FROM cursos c,subrubros s WHERE c.id_cursos = ? AND c.id_subrubros=s.id_subrubros', [id], (err, rows, fields) => {
        if (!err) {
            res.json({ 
               // ok: true,
                rows: rows
            });
        } else {
            res.json({ 
                ok: false,
                error: err
            });
        }
    });
});

router.get('/comision/:id', (req, res) => {
    const { id } = req.params;
    mysqlConnection.query('SELECT * FROM comisiones WHERE horario_dias = ? ' , [id], (err, rows, fields) => {
        if (!err) {
            res.json({ 
               // ok: true,
                rows: rows
            });
        } else {
            res.json({ 
                ok: false,
                error: err
            });
        }
    });
});
// GET An curso por id de subrubro
router.get('/subrubro/:id', (req, res) => {
    const { id } = req.params;
    mysqlConnection.query('SELECT * FROM subrubros WHERE id_subrubros = ?', [id], (err, rows, fields) => {
        if (!err) {
            res.json({ 
                ok: true,
                rows: rows
            });
        } else {
            res.json({ 
                ok: false,
                error: err
            });
        }
    });
});


router.get('/subrubros', (req, res) => {
    mysqlConnection.query('SELECT * FROM subrubros', (err, rows, fields) => {
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


// DELETE An curso por id
router.delete('/cursos/:id', (req, res) => {
    const { id } = req.params;
    mysqlConnection.query('DELETE FROM cursos WHERE id_cursos = ?', [id], (err, rows, fields) => {
        if (!err) {
            res.json({ 
                ok: true ,
               message:'Curso eliminado correctamente'
            });
        } else {
            res.json({ 
                ok: false,
                error: err
            });
        }
    });
});


// create application/json parser
var jsonParser = bodyParser.json();
// create application/x-www-form-urlencoded parser
var urlencodedParser = bodyParser.urlencoded({ extended: false });

// INSERT An curso
router.post('/cursos/', urlencodedParser, (req, res) => {
    const { nombre, descripcion, publico_destinado, requisitos, url_imagen_presentacion, url_video_presentacion, precio_inscripcion, precio_cuota, cantidad_cuotas, id_subrubros } = req.body;


    let sql = 'INSERT INTO cursos(nombre, descripcion, publico_destinado, requisitos, url_imagen_presentacion, url_video_presentacion, precio_inscripcion, precio_cuota, cantidad_cuotas, id_subrubros) VALUES (?,?,?,?,?,?,?,?,?,?)';
    var valores = [nombre, descripcion, publico_destinado, requisitos, url_imagen_presentacion, url_video_presentacion, precio_inscripcion, precio_cuota, cantidad_cuotas, id_subrubros];

    mysqlConnection.query(sql, valores, (err, rows, fields) => {
        if (!err) {
            res.json({ 
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

// POST registra una inscripcion
router.post('/inscripciones/',urlencodedParser, (req, res) => {
    const { id_comision, id_alu } = req.body;


    let sql = 'INSERT INTO inscripciones (id_comisiones, id_alumnos) VALUES (?,?)';
    var valores = [id_comision, id_alu];

    mysqlConnection.query(sql, valores, (err, rows, fields) => {
        if (!err) {
            res.json({ 
                ok: true,
                message:"Se hizo la inscripcion correctamente"
            });
        } else {
            res.json({ 
                ok: false,
                error: err
            });
        }
    });
});



// Update un curso
router.put('/cursos/:id', urlencodedParser, (req, res) => {
    const id = req.params.id;
    const { nombre, descripcion, publico_destinado, requisitos, url_imagen_presentacion, url_video_presentacion, precio_inscripcion, precio_cuota, cantidad_cuotas, id_subrubros } = req.body;
   
    let sql = 'UPDATE cursos SET nombre=?, descripcion=?, publico_destinado=?, requisitos=?, url_imagen_presentacion=?, url_video_presentacion=?, precio_inscripcion=?, precio_cuota=?, cantidad_cuotas=?, id_subrubros=? WHERE id_cursos=' + id;
    var valores = [nombre, descripcion, publico_destinado, requisitos, url_imagen_presentacion, url_video_presentacion, precio_inscripcion, precio_cuota, cantidad_cuotas,id_subrubros];
    
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