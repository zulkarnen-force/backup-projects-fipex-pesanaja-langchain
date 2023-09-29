import express from "express"
import User from "../entities/user.js"
import Repository from "../repositories/repository.js"
import Service from "../services/service.js"
import authenticateToken from '../middlewares/auth.middleware.js'
import generateId from "../utils/common.js"



let userController = express.Router()

let userRepo = new Repository(User)
let service = new Service(userRepo)

userController.post("/", async function(req, res) {
    req.body.id = generateId()
    try {
        let result = await service.create(req.body)  

        return res.status(200).json({
            message:"create user successfully",
            data: result
        })
    } catch (err) {
        res.status(400).json({
            error: err.message
        })
    }
})


userController.get("/", authenticateToken, async function(req, res) {
    try {
        let result = await service.getAll()
        return res.status(200).json({
            data: result
        })
    } catch (err) {
        res.status(500).json({
            error: err.message
        })
    }
})


userController.get("/:id", authenticateToken, async function(req, res) {
    let id = req.params.id

    try {
        let {result, exists} = await service.getById(id)
        if (!exists) {
            return res.status(200).json({
                message:"user not found"
            })
        }
        return res.status(200).json({
            data: result
        })
    } catch (err) {
        res.status(500).json({
            error: err.message
        })
    }
})


userController.delete("/:id", authenticateToken, async function(req, res) {
    let id = req.params.id

    try {
        let {result, exists} = await service.getById(id)
  

        if (!exists) {
            return res.status(200).json({
                message:"user not found"
            })
        }

        result.delete()

        res.status(200).json({
            "message":"user has been deleted successfully"
        })
    } catch (err) {
        res.status(500).json({
            error: err.message
        })
    }
})


userController.put("/:id", authenticateToken, async function(req, res) {
    let id = req.params.id
    req.body.updatedAt = Date.now()

    try {
        let result = await service.update(id, req.body)

        res.status(200).json({
            "message":"user has been updated successfully",
        })

    } catch (err) {
        res.status(500).json({
            error: err.message
        })
    }
})


export default userController