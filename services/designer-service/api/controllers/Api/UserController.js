/**
 * UserController
 *
 * @description :: Server-side actions for handling incoming requests.
 * @help        :: See https://sailsjs.com/docs/concepts/actions
 */

var bcrypt = require('bcrypt')

module.exports = {
    _config : {
        actions     : true,
        shortcuts   : false,
        rest        : false
    },

    'signup': async function (req, res) {
        var confirm = req.body.confirmation;
        var roles_user;
        delete req.body.confirmation;

        if (req.body.password !== confirm) {
            return res.json({
                success : false,
                message : "Password does not match confirmation !",
                data    : null
            })
        } else {
            var user = await User.create(req.body).fetch();

            if (!user) {
                return res.json({
                    success : false,
                    message : sails.config.custom.message_register_failed,
                    data    : null
                })
            }

            if (user.code === "E_UNIQUE") {
              return res.json({
                success : false,
                message : sails.config.custom.response_unique_username_email
              })
            }

            if (req.body.role_id === 2) {
                roles_user = await Desainer.create({
                    'user_id'   : user.id
                }).fetch();
            } else if (req.body.role_id === 3) {
                roles_user = await Pelanggan.create({
                    'user_id'   : user.id
                }).fetch();
            } else if (req.body.role_id === 1) {
                return res.json({
                    success: true,
                    message: sails.config.global_variable.message_register_success,
                    data: user,
                })
            }

            if (req.body === {}) {
                return res.json(sails.config.global_variable.response_form_empty)
            }

            var alamat_user = await Alamat_user.create({
                kecamatan       : "",
                kota_kab        : "",
                provinsi        : "",
                alamat_lengkap  : "",
                kode_pos        : "",
                user_id         : user.id
            }).fetch()

            if (roles_user === null || roles_user === undefined || alamat_user === null || alamat_user === undefined) {
                return res.json({
                    success : false,
                    message : sails.config.custom.message_register_failed,
                    data    : null
                })
            } else {
                return res.json({
                    success: true,
                    message: sails.config.global_variable.message_register_success,
                    data: user,
                })
            }
        }
    },

    'login' : async function (req, res) {
        if (!req.body.email || !req.body.password) {
            return res.badRequest({
                success : false,
                message : sails.config.global_variable.message_email_pass_empty,
                data    : null
            })
        }

        User.findOne({
            email : req.body.email
        }).exec(function (err, user) {
            if (err) return res.json({ error : err })

            if (!user) {
                return res.json({
                    success : false,
                    message : sails.config.global_variable.message_email_not_found + req.body.email + '.',
                    data    : null
                })
            }

            bcrypt.compare(req.body.password, user.password, function (err, result) {
                if (result) {
                    return res.json({
                        success : true,
                        message : sails.config.global_variable.message_login_success,
                        data    : user,
                        token   : jwToken.sign(user)
                    })
                } else {
                    return res.json({
                        success : false,
                        message : sails.config.global_variable.message_email_pass_doesnt_match,
                        data    : null
                    })
                }
            })
        })
    },

    'getById' : function (req, res) {
        sails.sendNativeQuery('select * from user u, alamat_user a where u.id = a.user_id and u.id = $1 limit 1', [req.param('id')],
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
                    data: data.rows[0]
                })
            });
    },
};

