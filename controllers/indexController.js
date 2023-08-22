const ScenarioModel = require('../models/ScenarioModel');
const ScenarioRoleModel = require('../models/ScenarioRoleModel');
const {validationResult} = require('express-validator');

exports.index = async function(req, res){
    const scenarioModel = new ScenarioModel();
    const scenarioRoleModel = new ScenarioRoleModel();

    res.response.scenarios = await scenarioModel.getAll();

    for(const scenario of res.response.scenarios)
        scenario.roles = await scenarioRoleModel.getByScenarioId(scenario.id);

    return res.status(200).json(res.response);
};

exports.test = async function(req, res, next){



    // const Request = require('express').request;
    //
    //
    // const {body} = require("express-validator");
    //
    // Request.body = {
    //     negotiationll_user_id: 'kk'
    // };
    //
    //
    // const negotiationUserUpdateBody = [
    //     body('negotiation_user_id').notEmpty()
    //         .withMessage('negotiation_user_id is require'),
    // ];
    //
    //
    // // const { checkSchema } = require('express-validator/check');
    //
    //
    // for (let validation of negotiationUserUpdateBody)
    //     await validation.run(Request);
    //
    //
    // const errors = validationResult(Request);
    //
    // console.log(errors);

    // if (errors.isEmpty()) {
    //     console.log(errors);
    // }


    // req.body['test_fieddld'] = 'asdasd';
    //
    //
    // const test = {};
    //
    //
    // const a = checkSchema({
    //     id: {
    //         // The location of the field, can be one or more of body, cookies, headers, params or query.
    //         // If omitted, all request locations will be checked
    //         in: ['body'],
    //         errorMessage: 'ID is wrong',
    //         isInt: true,
    //         // Sanitizers can go here as well
    //         // toInt: true
    //     },
    // });
    // //
    //
    //
    //
    // // console.log(req.body);

    // const [errors]  = await a.run(Request);

    // console.log(errors);
    // //
    // //
    // const {body} = require("express-validator");
    // (body('test_field').notEmpty().withMessage('negotiation_user_id is require'))(req, res, next);
    // //
    // //
    // //
    //  const errors = validationResult(Request);

     // console.log(errors);

    // // if(!errors.isEmpty()){
    // //     res.response.validationErrors = errors.array();
    // //     return res.status(400).json(res.response);
    // // }
    // //
    //
    //
    // console.log(res.response);

    // res.response.validationErrors.push('test');
    // const errors = validationResult(req);
    // if(!errors.isEmpty()){
    //     response.validationErrors = errors.array();
    //     return res.status(400).json(response);
    // }




    return res.status(200).json(res.response);
};


