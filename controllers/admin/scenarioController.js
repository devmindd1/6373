// let UserModelClass  = require('../../models/userModelMy.js');
// let GroupModelClass = require('../../models/GroupModel.js');
const {validationResult} = require('express-validator');
const ScenarioModel = require('../../models/ScenarioModel');
// let GroupUrlModelClass = require('../../models/GroupUrlModel.js');
// let GroupUrlModelClass = require('../../models/GroupUrlModel.js');

exports.index = async function(req, res){
    const scenarioModel = new ScenarioModel();

    res.render("admin/scenarios/main", {
        items: await scenarioModel.getAll()
    });
};

exports.edit = async function(req, res){
    const groupId = parseInt(req.params.id);
    const groupModel = new GroupModelClass();
    const userModel = new UserModelClass();

    res.render("admin/groups/edit", {
        usersList: await userModel.getAll(),
        model: await groupModel.getById(groupId)
    });
};

exports.update = async function(req, res){
    const groupId = parseInt(req.params.id);
    const groupModel = new GroupModelClass();
    const userModel = new UserModelClass();

    const errors = validationResult(req);
    if(errors.errors.length){
        return res.render("admin/groups/edit", {
            usersList: await userModel.getAll(),
            errors: errors.array(),
            model: await groupModel.getById(groupId)
        });
    }

    await groupModel.updateById(groupId, {
        title: req.body.title,
        user_id: req.body.user_id,
    });

    return res.redirect('/admin/groups');
};

exports.create = async function(req, res){
    let errors;
    const scenarioModel = new ScenarioModel();

    if(req.method === 'POST'){
        errors = (validationResult(req)).array();

        if(!errors.length){
            await scenarioModel.insert(req.body);
            res.redirect('/admin/scenarios');
        }
    }

    return res.render("admin/scenarios/create", {
        errors: errors,
        model: req.body
    });
};

