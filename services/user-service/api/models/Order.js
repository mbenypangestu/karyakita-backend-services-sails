/**
 * Order.js
 *
 * @description :: A model definition.  Represents a database table/collection/etc.
 * @docs        :: https://sailsjs.com/docs/concepts/models-and-orm/models
 */

module.exports = {
    tableName   : 'order',
    primaryKey  : 'id',

    attributes: {
        catatan     : {
            type    : 'string'
        },
        total       : {
            type        : 'number',
            columnType  : 'double',
            required    : true
        },
        tanggal_deadline: {
            type        : 'ref',
            columnType  : 'date',
            required: true
        },
        tanggal_selesai : {
            type        : 'ref',
            columnType  : 'date',
        },
        is_accepted     : {
            type        : 'number',
            required    : true
        },
        status_bayar    : {
            type        : 'number',
            required    : true
        },
        status_diproses : {
            type        : 'number',
            required    : true
        },
        status_selesai  : {
            type        : 'number',
            required    : true
        },
        status_dikirim  : {
            type        : 'number',
            required    : true
        },
        status_diterima : {
            type        : 'number',
            required    : true
        },

        //  ╔═╗╦═╗╦╔╦╗╦╔╦╗╦╦  ╦╔═╗╔═╗
        //  ╠═╝╠╦╝║║║║║ ║ ║╚╗╔╝║╣ ╚═╗
        //  ╩  ╩╚═╩╩ ╩╩ ╩ ╩ ╚╝ ╚═╝╚═╝


        //  ╔═╗╔╦╗╔╗ ╔═╗╔╦╗╔═╗
        //  ║╣ ║║║╠╩╗║╣  ║║╚═╗
        //  ╚═╝╩ ╩╚═╝╚═╝═╩╝╚═╝


        //  ╔═╗╔═╗╔═╗╔═╗╔═╗╦╔═╗╔╦╗╦╔═╗╔╗╔╔═╗
        //  ╠═╣╚═╗╚═╗║ ║║  ║╠═╣ ║ ║║ ║║║║╚═╗
        //  ╩ ╩╚═╝╚═╝╚═╝╚═╝╩╩ ╩ ╩ ╩╚═╝╝╚╝╚═╝

        pelanggan_id    : {
            model : 'pelanggan',
            required: true
        },
        desainer_id     : {
            model : 'desainer',
            required: true
        },
        kategori_karya_id   : {
            model : 'kategori_karya',
            required: true
        },
        jenis_order_id  : {
            model : 'jenis_order',
            required: true
        },
        opsi_order_id   : {
            model : 'opsi_order',
            required: true
        },

        alamat_order    : {
            collection  : 'alamat_order',
            via         : 'order_id'
        },
        detail_oder     : {
            collection  : 'detail_order',
            via         : 'order_id'
        },
        detail_pembayaran   : {
            collection  : 'detail_pembayaran',
            via         : 'order_id'
        },
        hasil           : {
            collection  : 'hasil_order',
            via         : 'order_id'
        },
        detail_pengiriman   : {
            collection  : 'detail_pengiriman',
            via         : 'order_id'
        },
        notifikasi : {
            collection    : 'notifikasi',
            via           : 'order_id'
        },

    },

};

