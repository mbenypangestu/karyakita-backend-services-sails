/**
 * KaryaController
 *
 * @description :: Server-side actions for handling incoming requests.
 * @help        :: See https://sailsjs.com/docs/concepts/actions
 */

module.exports = {
    'getAll' : function (req, res) {
        Karya.find().exec(function (err, data) {
            if (err) {
                res.view('pages/website/karya/list_all', {
                    success: false,
                    message: err.message,
                    data: null
                })
            }

            data.forEach(function (item_data) {
                item_data.local_url = sails.config.custom.localUrl + item_data.path + item_data.filename;
                item_data.deploy_url = sails.config.custom.deployUrl + item_data.path + item_data.filename;
            });

            res.view('pages/website/karya/list_all', {
                success: true,
                list_karya : data
            })
        });
    },

    'detail' : function (req, res) {
        Karya.findOne({
            'id': req.param('id')
        }).exec(function (err, data) {
            if (err) {
                res.view('pages/website/detail_produk', {
                    success: false,
                    message: err.message,
                    data: null
                })
            }
            data.local_url = sails.config.custom.localUrl + data.path + data.filename;
            data.deploy_url = sails.config.custom.deployUrl + data.path + data.filename;

            res.view('pages/website/detail_produk', {
                success: true,
                data: data
            })
        });
    },
};

