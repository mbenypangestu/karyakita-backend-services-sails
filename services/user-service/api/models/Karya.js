/**
 * Karya.js
 *
 * @description :: A model definition.  Represents a database table/collection/etc.
 * @docs        :: https://sailsjs.com/docs/concepts/models-and-orm/models
 */

module.exports = {
    tableName   : 'karya',
    primaryKey  : 'id',
    attributes: {

        //  ╔═╗╦═╗╦╔╦╗╦╔╦╗╦╦  ╦╔═╗╔═╗
        //  ╠═╝╠╦╝║║║║║ ║ ║╚╗╔╝║╣ ╚═╗
        //  ╩  ╩╚═╩╩ ╩╩ ╩ ╩ ╚╝ ╚═╝╚═╝
        nama : {
            type        : 'string',
            required    : true
        },
        deskripsi : {
            type        : 'string',
            required    : true
        },
        harga : {
            type        : 'number',
            columnType  : 'double',
            required    : true
        },
        jumlah_revisi   : {
            type        : 'number',
            required    : true
        },
        lama_pengerjaan : {
            type        : 'number',
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

        kategori_karya_id : {
            model   : 'kategori_karya'
        },
        desainer_id : {
            model   : 'desainer'
        },
        ukuran_karya: {
            collection  : 'ukuran_karya',
            via         : 'karya_id'
        },
        rating : {
            collection  : 'rating',
            via         : 'karya_id'
        }
    },

};

