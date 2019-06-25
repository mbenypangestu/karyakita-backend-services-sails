/**
 * OrderController
 *
 * @description :: Server-side actions for handling incoming requests.
 * @help        :: See https://sailsjs.com/docs/concepts/actions
 */

module.exports = {
    _config : {
        actions     : true,
        shortcuts   : false,
        rest        : false,
    },

    'orderCustom' : async function (req, res) {
        var datetime = new Date();

        if (req.body == null) {
            return res.json({
                message : 'input kosongan'
            })
        }

        var orderCustom = await Order.create({
            catatan             : req.body.catatan,
            total               : 0,
            tanggal_deadline    : req.body.tanggal_deadline,
            is_accepted         : 0,
            status_bayar        : 0,
            status_diproses     : 0,
            status_selesai      : 0,
            status_dikirim      : 0,
            status_diterima     : 0,
            pelanggan_id        : req.body.pelanggan_id,
            desainer_id         : req.body.desainer_id,
            kategori_karya_id   : req.body.kategori_karya_id,
            jenis_order_id      : 2,
            opsi_order_id       : req.body.opsi_order_id
        }).fetch();

        if (orderCustom.id != null) {
            req.file('gambar').upload({
                dirname: require('path').resolve(sails.config.appPath, 'assets/images/order/custom/' + orderCustom.id + "/"),
                maxBytes: 10000000,
                saveAs:  orderCustom.id + "_" + datetime + ".png"
            }, async function (err, uploads) {
                var detailOrder = await Detail_order.create({
                    ukuran      : req.body.ukuran,
                    qty         : req.body.qty,
                    sub_total   : 0,
                    path        : '/images/order/custom/' + orderCustom.id + '/',
                    filename    : orderCustom.id + "_" + datetime + ".png",
                    filesize    : uploads[0].size,
                    order_id    : orderCustom.id
                }).fetch();

                return res.json({
                    success : true,
                    message : sails.config.global_variable.message_save_data_success,
                    order   : orderCustom,
                    detail  : detailOrder
                })
            })
        }
    },

    'directOrder' : async function (req, res) {
        if (req.body === {}) {
            return res.json(sails.config.global_variable.response_form_empty)
        }

        Karya.findOne({
            'id': req.body.karya_id
        }).exec(async function (err, data) {
            var datetime = new Date();

            if (err) {
                return res.json({
                    success: false,
                    message: err.message,
                    data: null
                })
            }

            var orderCreate = await Order.create({
                catatan             : req.body.catatan,
                total               : data.harga,
                tanggal_deadline    : req.body.tanggal_deadline,
                is_accepted         : 0,
                status_bayar        : 0,
                status_diproses     : 0,
                status_selesai      : 0,
                status_dikirim      : 0,
                status_diterima     : 0,
                pelanggan_id        : req.body.pelanggan_id,
                desainer_id         : data.desainer_id,
                kategori_karya_id   : data.kategori_karya_id,
                jenis_order_id      : 1,
                opsi_order_id       : req.body.opsi_order_id,
            }).fetch();

            if (orderCreate.id != null) {
                var detailOrder = await Detail_order.create({
                    ukuran      : req.body.ukuran,
                    qty         : req.body.qty,
                    sub_total   : 0,
                    path        : '/images/order/direct/' + orderCreate.id + '/',
                    filename    : orderCreate.id + "_" + datetime + ".png",
                    filesize    : 0,
                    order_id    : orderCreate.id
                }).fetch();

                return res.json({
                    success : true,
                    message : sails.config.global_variable.message_save_data_success,
                    order   : orderCreate,
                    detail  : detailOrder
                })
                // var src = fs.createReadStream('assets/images/karya/' + data.filename)
                // var dst = fs.createWriteStream('assets/images/order/direct/' + data.filename)
                //
                // src.pipe(dst)
                // src.on('end', function () {
                //     src.close()
                //
                //
                // })
            }

            return res.json(orderCreate.code);
        });
    },

    'sendDataPengiriman' : async function(req, res) {
        if (req.body === {}) {
            return res.json(sails.config.global_variable.response_form_empty)
        }

        var data_pengiriman = await Detail_pengiriman.create({
            via             : req.body.via,
            resi            : req.body.resi,
            kecamatan       : req.body.kecamatan,
            kota_kab        : req.body.kota_kab,
            provinsi        : req.body.provinsi,
            alamat_lengkap  : req.body.alamat_lengkap,
            kode_pos        : req.body.kode_pos,
            order_id        : req.body.order_id
        }).fetch()

        if (data_pengiriman) {
            return res.json({
                success : true,
                message : sails.config.global_variable.message_save_data_success,
                data    : data_pengiriman
            })
        } else {
            return res.json({
                success : false,
                message : sails.config.global_variable.message_save_data_failed,
            })
        }
    },

    'orderList' : function (req, res) {
        var pelanggan_id = req.param('customer_id')

        Order.getDatastore().sendNativeQuery("select o.*, o.id, o.total, o.tanggal_deadline, kat.kategori," +
            " u.nama as 'nama_desainer'," +
            " j.jenis_order, ops.opsi_order, det.path, det.filename" +
            " from `order` o, `kategori_karya` kat, `jenis_order` j, `opsi_order` ops, `desainer` d, `user` u, `detail_order` det" +
            " where o.kategori_karya_id = kat.id and o.jenis_order_id = j.id and o.opsi_order_id = ops.id and" +
            " o.desainer_id = d.id and d.user_id = u.id and det.order_id = o.id" +
            " and o.pelanggan_id = " + pelanggan_id
            , function (err, result) {
                if (err) {
                    return res.json({
                        success: false,
                        message: err.message,
                        data: null
                    })
                }

                if (result.rows.length === 0) {
                    return res.json({
                        success: true,
                        message: "Data not found",
                        data: result.rows
                    })
                }

                result.rows.forEach(function (item_data) {
                    item_data.local_url = sails.config.custom.localUrl + item_data.path + item_data.filename;
                    item_data.deploy_url = sails.config.custom.deployUrl + item_data.path + item_data.filename;
                })

                result.rows.forEach(function (item_data) {
                    delete item_data.path
                    delete item_data.filename
                })

                return res.json({
                    success: true,
                    message: sails.config.global_variable.message_retrieving_data_success,
                    data: result.rows
                })
            });
    },

    'acceptRejectOrder' : async function(req, res) {
        var accepted = req.body.accepted
        var id = req.body.id

        var process = await Order.update({
            id : id
        }).set({
            is_accepted : accepted
        }).fetch();

        if (process) {
            return res.json({
                success : true,
                message : sails.config.global_variable.message_update_data_success,
                data    : process
            })
        } else {
            return res.json({
                success : false,
                message : sails.config.global_variable.message_update_data_failed,
            })
        }
    }
};

