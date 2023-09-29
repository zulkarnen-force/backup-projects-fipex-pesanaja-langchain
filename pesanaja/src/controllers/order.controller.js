import Order from '../entities/order.js'
import OrderService from '../services/order.service.js'
import  Repository  from "../repositories/repository.js"
import express from  'express'
import http from 'http'
let orderController =  express.Router()


let repo = new Repository(Order)
let service = new OrderService(repo)

orderController.get('/', async (req, res) => {
    let result = await service.getAll()

    res.status(200).json({
        status: true, 
        code: 200,
        data: result
    })
})  


orderController.get('/:id', async (req, res) => {
    try {
        let result = await service.getById(req.params.id)

        if (!result) {
            return res.status(200).json({
                status: true, 
                code: 200,
                message: "not found",
            })
        }

        return res.status(200).json({
            status: true, 
            code: 200,
            data: result
        })

    } catch (e) {
        return res.status(200).json({
            status: false, 
            code: 500,
            data: result
        })
    }

})  


orderController.post('/', async (req, res) => {
    // let {ok, result} = await service.saveNewUser(req.body)

    // console.log('result ', result)

    // console.log('Oke ', ok)
    // const errors = validationResult(req);

    //     if (!errors.isEmpty()) {
    //         return res.status(400).json({
    //             success: false,
    //             errors: errors.array()
    //         });
    //     }

    // if (!ok) {
    //     return res.status(400).json({
    //         'msg':'user exists'
    //     })
    // }

    // return res.status(201).json({
    //     'msg':'user has been created successfully',
    //     result
    // })
})  


export default orderController 