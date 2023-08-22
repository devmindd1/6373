const {body} = require("express-validator");
const NegotiationUserModel = require("../../models/NegotiationUserModel");
const ScenarioRoleModel = require("../../models/ScenarioRoleModel");

const negotiationUserInsertBody = [
    body('scenario_role_id').notEmpty()
        .withMessage('scenario_role_id is require'),
    body('scenario_role_id').custom(async value => {
            const scenarioRoleModel = new ScenarioRoleModel();

            return scenarioRoleModel.getById(value).then(role => {
                if(!role) throw new Error('scenario_role_id is not exists');
            });
        }),
];

const negotiationUserJoinBody = [
    ...negotiationUserInsertBody,
    body('negotiation_id').notEmpty()
        .withMessage('negotiation_id is require'),
    body('negotiation_id').isInt()
        .withMessage('negotiation_id is integer'),
];

const negotiationUserUpdateBody = [
    body('negotiation_user_id').notEmpty()
        .withMessage('negotiation_user_id is require'),
    body('negotiation_user_id').isInt()
        .withMessage('negotiation_user_id is integer'),
    body('negotiation_user_id').custom(async (value, {req}) => {
        const negotiationUserModel = new NegotiationUserModel();

        const idExists = await negotiationUserModel.checkById(value);
        if(!idExists) throw new Error('negotiation_user_id is not exists');

        const belongsToUser = await negotiationUserModel.checkUserBelongs(value, req.user.id);
        if(!belongsToUser) throw new Error('negotiation_user_id is not exists');
    }),
];

module.exports = {
    negotiationUserInsertBody,
    negotiationUserJoinBody,
    negotiationUserUpdateBody
};
