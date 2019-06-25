/**
 * User.js
 *
 * @description :: A model definition.  Represents a database table/collection/etc.
 * @docs        :: https://sailsjs.com/docs/concepts/models-and-orm/models
 */

var bcrypt = require('bcrypt')

module.exports = {
    tableName : 'user',
    primaryKey : 'id',
    attributes: {

        //  ╔═╗╦═╗╦╔╦╗╦╔╦╗╦╦  ╦╔═╗╔═╗
        //  ╠═╝╠╦╝║║║║║ ║ ║╚╗╔╝║╣ ╚═╗
        //  ╩  ╩╚═╩╩ ╩╩ ╩ ╩ ╚╝ ╚═╝╚═╝

        email : {
            type        : 'string',
            required    : true,
            unique      : true,
            columnType: 'varchar(100)'
        },
        username : {
            type        : 'string',
            required    : true,
            unique      : true,
            columnType: 'varchar(100)'
        },
        password : {
            type        : 'string',
            required    : true
        },
        nama : {
            type        : 'string',
            columnType  : 'varchar'
        },
        notelp : {
            type        : 'string',
            columnType  : 'varchar'
        },


        //  ╔═╗╔╦╗╔╗ ╔═╗╔╦╗╔═╗
        //  ║╣ ║║║╠╩╗║╣  ║║╚═╗
        //  ╚═╝╩ ╩╚═╝╚═╝═╩╝╚═╝


        //  ╔═╗╔═╗╔═╗╔═╗╔═╗╦╔═╗╔╦╗╦╔═╗╔╗╔╔═╗
        //  ╠═╣╚═╗╚═╗║ ║║  ║╠═╣ ║ ║║ ║║║║╚═╗
        //  ╩ ╩╚═╝╚═╝╚═╝╚═╝╩╩ ╩ ╩ ╩╚═╝╝╚╝╚═╝

        role_id : {
            model : 'role'
        },
        desainer : {
            collection    : 'desainer',
            via           : 'user_id'
        },
        pelanggan : {
            collection    : 'pelanggan',
            via           : 'user_id'
        },
        alamat_user : {
            collection    : 'alamat_user',
            via           : 'user_id'
        },
        notifikasi  : {
            collection    : 'notifikasi',
            via           : 'user_id'
        }
    },

    beforeCreate: function (values, callback) {
        bcrypt.hash(values.password, 10, function (err, hash) {
            if (err) return callback(err);
            values.password = hash;

            return callback();
        })
    },

    customToJSON  : function () {
        delete this.password;
        return this;
    }

};

