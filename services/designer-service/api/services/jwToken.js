var jwt = require('jsonwebtoken');

module.exports = {
    'sign'   : function (payload) {
        return jwt.sign({
            data : payload
        }, sails.config.secret, {
            // expiresIn: 10000000
        })
    },

    'verify' : function (token, callback) {
        jwt.verify(token, sails.config.secret, callback)
    }
};
