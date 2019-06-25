/**
 * Hasil_order.js
 *
 * @description :: A model definition.  Represents a database table/collection/etc.
 * @docs        :: https://sailsjs.com/docs/concepts/models-and-orm/models
 */

module.exports = {
    tableName : 'hasil_order',
    primaryKey: 'id',
    attributes: {

        //  ╔═╗╦═╗╦╔╦╗╦╔╦╗╦╦  ╦╔═╗╔═╗
        //  ╠═╝╠╦╝║║║║║ ║ ║╚╗╔╝║╣ ╚═╗
        //  ╩  ╩╚═╩╩ ╩╩ ╩ ╩ ╚╝ ╚═╝╚═╝

        jumlah_revisi   : {
            type    : 'number',
            required    : true
        },
        status_revisi   : {
            type    : 'number',
            required    : true
        },
        harga : {
            type        : 'number',
            columnType  : 'double',
            required    : true
        },
        path : {
            type      : 'string',
            required    : true
        },
        filename : {
            type      : 'string',
            required    : true
        },
        filesize : {
            type      : 'number',
            columnType: 'double',
            required    : true
        },

        //  ╔═╗╔╦╗╔╗ ╔═╗╔╦╗╔═╗
        //  ║╣ ║║║╠╩╗║╣  ║║╚═╗
        //  ╚═╝╩ ╩╚═╝╚═╝═╩╝╚═╝


        //  ╔═╗╔═╗╔═╗╔═╗╔═╗╦╔═╗╔╦╗╦╔═╗╔╗╔╔═╗
        //  ╠═╣╚═╗╚═╗║ ║║  ║╠═╣ ║ ║║ ║║║║╚═╗
        //  ╩ ╩╚═╝╚═╝╚═╝╚═╝╩╩ ╩ ╩ ╩╚═╝╝╚╝╚═╝

        order_id : {
            model : 'order',
            unique : true
        },
        revisi : {
            collection: 'revisi_order',
            via         : 'hasil_order_id'
        }
    },

};

