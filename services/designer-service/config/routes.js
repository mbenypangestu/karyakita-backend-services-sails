/**
 * Route Mappings
 * (sails.config.routes)
 *
 * Your routes tell Sails what to do each time it receives a request.
 *
 * For more information on configuring custom routes, check out:
 * https://sailsjs.com/anatomy/config/routes-js
 */

module.exports.routes = {


    //  ╦ ╦╔═╗╔╗ ╔═╗╔═╗╔═╗╔═╗╔═╗
    //  ║║║║╣ ╠╩╗╠═╝╠═╣║ ╦║╣ ╚═╗
    //  ╚╩╝╚═╝╚═╝╩  ╩ ╩╚═╝╚═╝╚═╝

    /***************************************************************************
     *                                                                          *
     * Make the view located at `views/homepage.ejs` your home page.            *
     *                                                                          *
     * (Alternatively, remove this and add an `index.html` file in your         *
     * `assets` directory)                                                      *
     *                                                                          *
     ***************************************************************************/

    'GET /'             : 'Web/IndexController.home',
    'GET /login'        : 'Web/IndexController.login',

    'GET /karya'        : 'Web/KaryaController.getAll',
    'GET /karya/detail_karya/:id' : 'Web/KaryaController.detail',
    'GET /pesanan_saya' : 'Web/PesananSayaController.getAll',
    'GET /notifikasi'   : 'Web/NotifikasiController.getAll',

    /***************************************************************************
     *                                                                          *
     * More custom routes here...                                               *
     * (See https://sailsjs.com/config/routes for examples.)                    *
     *                                                                          *
     * If a request to a URL doesn't match any of the routes in this file, it   *
     * is matched against "shadow routes" (e.g. blueprint routes).  If it does  *
     * not match any of those, it is matched against static assets.             *
     *                                                                          *
     ***************************************************************************/


    //  ╔═╗╔═╗╦  ╔═╗╔╗╔╔╦╗╔═╗╔═╗╦╔╗╔╔╦╗╔═╗
    //  ╠═╣╠═╝║  ║╣ ║║║ ║║╠═╝║ ║║║║║ ║ ╚═╗
    //  ╩ ╩╩  ╩  ╚═╝╝╚╝═╩╝╩  ╚═╝╩╝╚╝ ╩ ╚═╝

    'GET /api/v1': function (req, res) {
        return res.json({
            "message"   : "Selamat datang di Karyakita !",
            "service"   : {
                "versioning"    : "v1",
                "deploy_endpoint"    : sails.config.custom.deployUrl + "/api/v1",
                "local_endpoint"     : sails.config.custom.localUrl + "/api/v1",
                "documentation" : "https://documenter.getpostman.com/view/1238282/RWgm2L5U"
            }
        })
    },
    'POST /api/v1/login'       : 'Api/UserController.login',
    'POST /api/v1/signup'      : 'Api/UserController.signup',

    'GET /api/v1/kategori_karya/get-all'        : 'Api/KategoriKaryaController.getAll',
    'GET /api/v1/kategori_karya/:id'            : 'Api/KategoriKaryaController.getById',
    'POST /api/v1/kategori_karya/create'        : 'Api/KategoriKaryaController.create',

    'GET /api/v1/karya/get-all'                         : 'Api/KaryaController.getAll',
    'GET /api/v1/karya/:id'                             : 'Api/KaryaController.getById',
    'GET /api/v1/karya/get-by-kategori/:kategori_id'    : 'Api/KaryaController.getByKategori',
    'GET /api/v1/karya/get-by-desainer/:desainer_id'    : 'Api/KaryaController.getByDesainer',
    'POST /api/v1/karya/create'                         : 'Api/KaryaController.create',

    'GET /api/v1/desainer/get-all'                      : 'Api/DesainerController.getAll',
    'GET /api/v1/desainer/:id'                          : 'Api/DesainerController.getById',

    // Customer
    'POST /api/v1/customer/order/custom'                : 'Api/OrderController.orderCustom',
    'POST /api/v1/customer/order/direct'                : 'Api/OrderController.directOrder',
    'GET /api/v1/customer/order/list/:customer_id'      : 'Api/OrderController.orderList',
    'POST /api/v1/customer/order/data-pengiriman'       : 'Api/OrderController.sendDataPengiriman',
    'POST /api/v1/customer/order/accept-reject'         : 'Api/OrderController.acceptRejectOrder',

    'GET /api/v1/customer/notif/:pelanggan_id'          : 'Api/NotifikasiController.getAll',

    'GET /api/v1/user/:id'            : 'Api/UserController.getById',

    // Desainer
    'GET /api/v1/grouping-task/doing'       : 'Api/TugasSayaController.doing',
    'GET /api/v1/desainer/order/list'       : 'Api/Desainer/OrderController.orderList'

    //  ╦ ╦╔═╗╔╗ ╦ ╦╔═╗╔═╗╦╔═╔═╗
    //  ║║║║╣ ╠╩╗╠═╣║ ║║ ║╠╩╗╚═╗
    //  ╚╩╝╚═╝╚═╝╩ ╩╚═╝╚═╝╩ ╩╚═╝


    //  ╔╦╗╦╔═╗╔═╗
    //  ║║║║╚═╗║
    //  ╩ ╩╩╚═╝╚═╝


};
