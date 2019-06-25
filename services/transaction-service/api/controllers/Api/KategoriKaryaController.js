/**
 * KategoriKaryaController
 *
 * @description :: Server-side actions for handling incoming requests.
 * @help        :: See https://sailsjs.com/docs/concepts/actions
 */

module.exports = {
    _config : {
        actions     : true,
        shortcuts   : false,
        rest        : true
    },

    'create' : function(req, res) {
        var datetime = new Date();

        req.file('file').upload({
            dirname: sails.config.appPath + '/assets/images/kategori_karya/',
            maxBytes:10000000,
            saveAs  : req.body.kategori + "_" + datetime + ".png"
        }, async function(err, uploads) {
            if (err) { return res.serverError(err) }

            if (uploads.length === 0) { return res.badRequest('No file was uploaded') }

            var save_kategori = await Kategori_karya.create({
                kategori    :req.body.kategori,
                path        : '/images/kategori_karya/',
                filename    : req.body.kategori  + "_" + datetime + ".png",
                filesize    : uploads[0].size
            }).fetch();

            if (save_kategori) {
                return res.json({
                    success: true,
                    message: sails.config.global_variable.message_save_data_success,
                    data: save_kategori
                })
            } else {
                return res.json({
                    success: false,
                    message: sails.config.global_variable.message_save_data_failed,
                })
            }
        })
    },
    
    'getAll' : function (req, res) {
        Kategori_karya.find().exec(function (err, data) {
            if (err) {
                return res.json({
                    success : false,
                    message : err.message,
                    data    : null
                })
            }

            data.forEach(function (item_data) {
                item_data.local_url     = sails.config.custom.localUrl + item_data.path + item_data.filename;
                item_data.deploy_url    = sails.config.custom.deployUrl + item_data.path + item_data.filename;
            });

            return res.json({
                success : true,
                message : sails.config.global_variable.message_retrieving_data_success,
                data    : data
            })
        });
    },

    'getById' : function (req, res) {
        Kategori_karya.findOne({
            'id' : req.param('id')
        }).exec(function (err, data) {
            if (err) {
                return res.json({
                    success : false,
                    message : err.message,
                    data    : null
                })
            }
            return res.json({
                success : true,
                message : sails.config.global_variable.message_retrieving_data_success,
                data    : data
            })
        });
    }

};

