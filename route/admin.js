const router = new (require('express').Router);

const auth = require('../controllers/admin/authController.js');
const home = require('../controllers/admin/homeController.js');
const scenarioController = require('../controllers/admin/scenarioController.js');

const adminAuthMiddleware = require('../middlewares/adminAuthMiddleware.js');

const {adminLoginBody} = require('../models/bodyValidation/userBody.js');


router.get('/login', auth.index);
router.post('/login', [adminLoginBody], auth.login);

router.get('/', [adminAuthMiddleware], home.index);
router.get('/edit', [adminAuthMiddleware], home.edit);
router.post('/update', [adminAuthMiddleware], home.update);

router.get('/scenarios', [adminAuthMiddleware], scenarioController.index);
router.get('/scenarios/create', [adminAuthMiddleware], scenarioController.create);
router.post('/scenarios/create', [adminAuthMiddleware], scenarioController.create);

// router.post('/groups/move-to-user', [adminAuthMiddleware], group.moveToUser);


module.exports = router;