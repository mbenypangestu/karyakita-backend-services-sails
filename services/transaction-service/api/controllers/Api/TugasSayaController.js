/**
 * TugasSayaController
 *
 * @description :: Server-side actions for handling incoming requests.
 * @help        :: See https://sailsjs.com/docs/concepts/actions
 */

module.exports = {
    'doing' : async function (req, res) {
        Order.find({
            'status_diproses' : 1
        }).populate('pelanggan_id')
            .populate('desainer_id')
            .populate('kategori_karya_id')
            .exec(function (err, data) {
                if (err) {
                    return res.json({
                        success: false,
                        message: err.message,
                        data: null
                    })
                }

                res.json({
                    success : true,
                    data    : data
                })
            })
    },

    'finished' : async function(req, res) {
        Order.find({
            'status_selesai' : 1
        }).populate('pelanggan_id')
            .populate('desainer_id')
            .populate('kategori_karya_id')
            .exec(function (err, data) {
                if (err) {
                    return res.json({
                        success: false,
                        message: err.message,
                        data: null
                    })
                }

                res.json({
                    success : true,
                    data    : data
                })
            })
    },

    'send' : async function(req, res) {
        Order.find({
            'status_dikirim' : 1
        }).populate('pelanggan_id')
            .populate('desainer_id')
            .populate('kategori_karya_id')
            .exec(function (err, data) {
                if (err) {
                    return res.json({
                        success: false,
                        message: err.message,
                        data: null
                    })
                }

                res.json({
                    success : true,
                    data    : data
                })
            })
    },

    'accepted' : async function(req, res) {
        Order.find({
            'status_diterima' : 1
        }).populate('pelanggan_id')
            .populate('desainer_id')
            .populate('kategori_karya_id')
            .exec(function (err, data) {
                if (err) {
                    return res.json({
                        success: false,
                        message: err.message,
                        data: null
                    })
                }

                res.json({
                    success : true,
                    data    : data
                })
            })
    },


};
