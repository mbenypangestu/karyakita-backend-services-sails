/**
 * NotifikasiController
 *
 * @description :: Server-side actions for handling incoming requests.
 * @help        :: See https://sailsjs.com/docs/concepts/actions
 */

module.exports = {
    _config : {
        actions     : true,
        shortcuts   : false,
        rest        : false
    },

    'getAll' : function (req, res) {
        var user_id = req.param('pelanggan_id')

        Notifikasi.find({
            user_id : user_id
        }).exec(function (err, data) {
            if (err) {
                return res.json({
                    success: false,
                    message: err.message,
                    data: null
                })
            }

            return res.json({
                success : true,
                data    : data
            })
        })
    }
};

