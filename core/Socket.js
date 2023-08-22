const socketAuthMiddleware = require('../middlewares/socketAuthMiddleware');
const messageController = require('../controllers/socketControllers/messageController');
const negotiationController = require('../controllers/socketControllers/negotiationController');
const {ApiResponse} = require('./apiResponse');
const {validateAccessToken} = require('../services/tokenService');
const UserDto = require('../dtos/UserDto');

class Socket{
    constructor(socket){
        const user = socketAuthMiddleware(socket.handshake.headers.authorization);
        if(!user)
            return this.disconnect();

        socket.accessToken = user.accessToken;
        socket.user = new UserDto(user);

        this.addMappingTo(socket);
    }

    addMappingTo(socket){
        socket.use(async (data, next) => {
            if(!validateAccessToken(socket.accessToken))
                return this.disconnect();

            data[1] = {
                name: data[0],
                body: data[1],
                socket: socket,
                response: new ApiResponse()
            };

            next();
        });

        socket.on('negotiation-join', negotiationController.join);
        socket.on('get-messages', messageController.getByNegotiation);
        socket.on('disconnect', () => this.disconnect(socket));
    }

    disconnect(socket){
        socket.disconnect();
    }
}

module.exports = Socket;