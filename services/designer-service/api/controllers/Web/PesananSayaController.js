/**
 * PesananSayaController
 *
 * @description :: Server-side actions for handling incoming requests.
 * @help        :: See https://sailsjs.com/docs/concepts/actions
 */

module.exports = {
    'getAll' : function (req, res) {
        res.view('pages/website/pesanan_saya')
    },
};

