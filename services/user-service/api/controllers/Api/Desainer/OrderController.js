/**
 * OrderController
 *
 * @description :: Server-side actions for handling incoming requests.
 * @help        :: See https://sailsjs.com/docs/concepts/actions
 */

module.exports = {
    'orderList' : function (req, res) {
        Order.getDatastore().sendNativeQuery("select o.id, o.total, o.tanggal_deadline, kat.kategori," +
            " u.nama as 'nama_desainer'," +
            " j.jenis_order, ops.opsi_order" +
            " from `order` o, `kategori_karya` kat, `jenis_order` j, `opsi_order` ops, `desainer` d, `user` u, `detail_order` det" +
            " where o.kategori_karya_id = kat.id and o.jenis_order_id = j.id and o.opsi_order_id = ops.id and" +
            " o.desainer_id = d.id and d.user_id = u.id and det.order_id = o.id"
            , function (err, result) {
            if (err) {
                return res.json({
                    success : false,
                    message : err.message,
                    data    : null
                })
            }

            if (result.rows.length === 0) {
                return res.json({
                    success : true,
                    message : "Data not found",
                    data    : result.rows
                })
            }
            result.rows.forEach(function (item_data) {
                item_data.local_url = sails.config.custom.localUrl + item_data.path + item_data.filename;
                item_data.deploy_url = sails.config.custom.deployUrl + item_data.path + item_data.filename;
            })

            return res.json({
                success : true,
                message : sails.config.global_variable.message_retrieving_data_success,
                data    : result.rows
            })
        });
    }
};

