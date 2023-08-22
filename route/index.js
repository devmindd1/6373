const router = new (require('express').Router)();
const authMiddleware = require('../middlewares/authMiddleware');
const {signUpBody, loginBody} = require('../models/bodyValidation/userBody');
const {negotiationInsertBody} = require('../models/bodyValidation/negotiationBody');
const {
    negotiationUserInsertBody,
    negotiationUserUpdateBody,
    negotiationUserJoinBody
} = require('../models/bodyValidation/negotiationUserBody');

const auth = require('../controllers/authController');
const index = require('../controllers/indexController');
const country = require('../controllers/countryController');
const scenario = require('../controllers/scenarioController');
const negotiation = require('../controllers/negotiationController');
const scenarioRole = require('../controllers/scenarioRoleController');
const negotiationUser = require('../controllers/negotiationUserController');

///////////////////////////////////////////////////////////////////////////////////////////
router.post('/login', [loginBody], auth.login);
router.post('/sign-up', [signUpBody], auth.signUp);
router.post('/test', index.test);
router.get('/test1', index.test);
router.get('/countries', country.list);
router.post('/negotiation-available', [], negotiation.getAvailable);

//todo authmidlware to all('*'); without login sign in
router.get('/connect', [authMiddleware], auth.connect);
router.post('/logout', [authMiddleware], auth.logout);

router.get('/scenarios/list', [authMiddleware], scenario.getList);
router.get('/scenarios/:scenarioId', [authMiddleware], scenario.getById);

router.get('/scenario-roles', [authMiddleware], scenarioRole.getById);

router.post('/negotiations/create', [authMiddleware, negotiationInsertBody, negotiationUserInsertBody], negotiation.insert);
router.post('/negotiations/join', [authMiddleware, negotiationUserJoinBody], negotiation.join);
router.get('/negotiations/for-join/:negotiationId', [authMiddleware], negotiation.getForJoin);
router.get('/negotiations/available', [authMiddleware], negotiation.getAvailable);

router.put('/negotiation-users', [authMiddleware, negotiationUserUpdateBody], negotiationUser.update);
router.get('/negotiation-users/pass-roles', [authMiddleware], negotiationUser.getPassRoles);
router.get('/negotiation-users/pass-roles/:scenarioRoleId', [authMiddleware], negotiationUser.getPassRole);

module.exports = router;