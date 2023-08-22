class ApiResponse{
    constructor(){
        this.validationErrors = [];
        this.errorMessage = '';
    }
}

exports.apiResponse = function(){
    return function(req, res, next){
        res.response = new ApiResponse();
        next();
    }
};

exports.ApiResponse = ApiResponse;