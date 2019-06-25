/**
 * KaryaController
 *
 * @description :: Server-side actions for handling incoming requests.
 * @help        :: See https://sailsjs.com/docs/concepts/actions
 */



module.exports = {
    _config: {
        actions: true,
        shortcuts: false,
        rest: true
    },

    'create': function (req, res) {
        var datetime = new Date();

        req.file('file').upload({
            dirname: require('path').resolve(sails.config.appPath, 'assets/images/karya/'),
            maxBytes: 10000000,
            saveAs: req.body.nama + "_" + datetime + ".png"
        }, async function (err, uploads) {
            if (err) {
                console.log(err);
                return res.json({
                    success: false,
                    message: sails.config.global_variable.message_validation_failed,
                })
            }

            if (uploads.length === 0) {
                return res.badRequest('No file was uploaded')
            }

            var new_karya = await Karya.create({
                kategori_karya_id: req.body.kategori_karya_id,
                desainer_id: req.body.desainer_id,
                nama: req.body.nama,
                harga: req.body.harga,
                lama_pengerjaan	: req.body.lama_pengerjaan,
                deskripsi: req.body.deskripsi,
                jumlah_revisi: req.body.jumlah_revisi,
                path: '/images/karya/',
                filename: req.body.nama + "_" + datetime + ".png",
                filesize: uploads[0].size
            }).fetch();

            if (new_karya) {
                return res.json({
                    success: true,
                    message: sails.config.global_variable.message_save_data_success,
                    data: new_karya
                })
            } else {
                return res.json({
                    success: false,
                    message: sails.config.global_variable.message_save_data_failed,
                })
            }
        })
    },

    'getAll': function (req, res) {
        Karya.find().exec(function (err, data) {
            if (err) {
                return res.json({
                    success: false,
                    message: err.message,
                    data: null
                })
            }

            data.forEach(function (item_data) {
                item_data.local_url = sails.config.custom.localUrl + item_data.path + item_data.filename;
                item_data.deploy_url = sails.config.custom.deployUrl + item_data.path + item_data.filename;
            });

            return res.json({
                success: true,
                data: data
            })
        });
    },

    'getById': function (req, res) {
        Karya.findOne({
            'id': req.param('id')
        }).exec(function (err, data) {
            if (err) {
                return res.json({
                    success: false,
                    message: err.message,
                    data: null
                })
            }

            sails.sendNativeQuery('select * from user u where u.id = $1', [data.desainer_id],
                function (err, desainer) {
                    if (err) {
                        return res.json({
                            success: false,
                            message: err.message,
                            data: null
                        })
                    }
                    data.desainer_name = desainer.rows[0].nama;

                    data.local_url = sails.config.custom.localUrl + data.path + data.filename;
                    data.deploy_url = sails.config.custom.deployUrl + data.path + data.filename;

                    return res.json({
                        success: true,
                        data: data
                    })
                });

        });
    },

    'getByKategori': function (req, res) {
        Karya.find({
            kategori_karya_id: req.param('kategori_id')
        }).populate('desainer_id').exec(function (err, data) {
            if (err) {
                return res.json({
                    success: false,
                    message: err.message,
                    data: null
                })
            }
            data.forEach(function (item_data) {
                item_data.local_url = sails.config.custom.localUrl + item_data.path + item_data.filename;
                item_data.deploy_url = sails.config.custom.deployUrl + item_data.path + item_data.filename;
            });

            return res.json({
                success: true,
                data: data
            })
        });
    },

    'getByDesainer': function (req, res) {
        Karya.find({
            'desainer_id': req.param('desainer_id')
        }).populate('desainer_id').exec(function (err, data) {
            if (err) {
                return res.json({
                    success: false,
                    message: err.message,
                    data: null
                })
            }
            data.forEach(function (item_data) {
                item_data.local_url = sails.config.custom.localUrl + item_data.path + item_data.filename;
                item_data.deploy_url = sails.config.custom.deployUrl + item_data.path + item_data.filename;
            });

            return res.json({
                success: true,
                data: data
            })
        });
    }
};

