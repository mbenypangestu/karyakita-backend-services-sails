/**
 * DesainerController
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
        sails.sendNativeQuery('select * from desainer d, user u, alamat_user a where' +
            ' d.user_id = u.id and u.id = a.user_id', function (err, data) {
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
                data    : data.rows
            })
        })
    },

    'getById' : function (req, res) {
        sails.sendNativeQuery('select * from desainer d, user u, alamat_user a where' +
            ' d.user_id = u.id and u.id = a.user_id and u.id = a.user_id and d.id = $1', [req.param('id')],
            function (err, data) {
            if (err) {
                return res.json({
                    success: false,
                    message: err.message,
                    data: null
                })
            }
            return res.json({
                success: true,
                data: data.rows
            })
        });
    }
};

