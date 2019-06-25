/**
 * IndexController
 *
 * @description :: Server-side actions for handling incoming requests.
 * @help        :: See https://sailsjs.com/docs/concepts/actions
 */

module.exports = {
    'home' : function (req, res) {
        Karya.find().exec(function (err, data) {
            if (err) {
                res.view('pages/website/index', {
                    success: false,
                    message: err.message,
                    data: null
                })
            }

            data.forEach(function (item_data) {
                item_data.local_url = sails.config.custom.localUrl + item_data.path + item_data.filename;
                item_data.deploy_url = sails.config.custom.deployUrl + item_data.path + item_data.filename;
            });

            res.view('pages/website/index', {
                success: true,
                list_karya : data
            })
        });
    },

    'login' : function (req, res) {
        res.view('pages/website/login')
    },
};

