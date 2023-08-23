const {body} = require("express-validator");
const ScenarioModel = require("../../models/ScenarioModel");
const NegotiationUserModel = require("../../models/NegotiationUserModel");

const negotiationJoinBody = [
    body('negotiationUuid')
        .custom(async (value, {req}) => {
            const negotiationUserModel = new NegotiationUserModel();

            return negotiationUserModel.checkUserBelongsNegotiation(req.socket.user.id, value).then((negotiation) => {
                if(!negotiation) throw new Error('negotiation dont found');
            });
        }),
];

const negotiationInsertBody = [
    body('scenario_id').notEmpty()
        .withMessage('scenario_id is require'),
    body('scenario_id').isInt()
        .withMessage('scenario_id is integer'),
    body('scenario_id').custom(async value => {
        const scenarioModel = new ScenarioModel();

        return scenarioModel.checkById(value).then(scenario => {
            if(!scenario) throw new Error('scenario_id is not exists');
        });
    }),
    body('waiting_timestamp').notEmpty()
        .withMessage('waiting_timestamp is require'),
    body('duration_timestamp').notEmpty()
        .withMessage('duration_timestamp is require'),
    body('notification_flag').isInt({ min: 0, max: 1 }).optional({checkFalsy: true})
        .withMessage('only Integer [0, 1]'),
    body('messaging_flag').isInt({ min: 0, max: 1 }).optional({checkFalsy: true})
        .withMessage('only Integer [0, 1]'),
    body('video_flag').isInt({ min: 0, max: 1 }).optional({checkFalsy: true})
        .withMessage('only Integer [0, 1]'),
];

module.exports = {
    negotiationInsertBody,
    negotiationJoinBody
};
