
import express  from 'express'

import userController from '../controllers/user.controller.js'
import orderController from '../controllers/order.controller.js'

let router = express.Router()

router.use("/orders", orderController)

router.use(function(req, res){
    res.status(404).json({error:"path not implemented"});
});

export default router