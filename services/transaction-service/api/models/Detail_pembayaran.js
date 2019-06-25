/**
 * Detail_pembayaran.js
 *
 * @description :: A model definition.  Represents a database table/collection/etc.
 * @docs        :: https://sailsjs.com/docs/concepts/models-and-orm/models
 */

module.exports = {
    tableName : 'detail_pembayaran',
    primaryKey: 'id',

    attributes: {

        //  ╔═╗╦═╗╦╔╦╗╦╔╦╗╦╦  ╦╔═╗╔═╗
        //  ╠═╝╠╦╝║║║║║ ║ ║╚╗╔╝║╣ ╚═╗
        //  ╩  ╩╚═╩╩ ╩╩ ╩ ╩ ╚╝ ╚═╝╚═╝

        no_rek : {
            type : 'number',
            required    : true
        },
        bank    : {
            type : 'string',
            required    : true
        },
        bukti_bayar_path : {
            type      : 'string',
            required    : true
        },
        bukti_bayar_filename : {
            type      : 'string',
            required    : true
        },
        bukti_bayar_filesize : {
            type      : 'number',
            columnType: 'double',
            required    : true
        },
        waktu : {
            type        : 'ref',
            columnType  : 'datetime',
            required    : true
        },



        //  ╔═╗╔╦╗╔╗ ╔═╗╔╦╗╔═╗
        //  ║╣ ║║║╠╩╗║╣  ║║╚═╗
        //  ╚═╝╩ ╩╚═╝╚═╝═╩╝╚═╝


        //  ╔═╗╔═╗╔═╗╔═╗╔═╗╦╔═╗╔╦╗╦╔═╗╔╗╔╔═╗
        //  ╠═╣╚═╗╚═╗║ ║║  ║╠═╣ ║ ║║ ║║║║╚═╗
        //  ╩ ╩╚═╝╚═╝╚═╝╚═╝╩╩ ╩ ╩ ╩╚═╝╝╚╝╚═╝

        order_id : {
            model : 'order'
        },

    },

};

