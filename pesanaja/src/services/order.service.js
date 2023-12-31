import  Repository  from "../repositories/repository.js"

export default class OrderService {
    
    constructor(repo = Repository) {
        this.repo = repo
    }

    getAll() {
        return this.repo.list()
    }

    
    getOne(query) {
        try {
            return this.repo.getOne(query)
        } catch (e) {
            throw e
        }
    
    }


    getById(id) {
        try {
            return this.repo.getOne({id})
        } catch (e) {
            throw e
        }
    
    }

    async create(request) {
        request.body.id = generateId()
        try {
            let result = await this.repo.insert(request.body)
            return result
        } catch (err) {
            throw err
        }
    }


    async update(id, requestBody) {
        requestBody.updatedAt = Date.now()
        try {
            let result = await this.repo.getOne({id:id})
            let newResult = await this.repo.update(result, requestBody)
            return newResult
        } catch (err) {
            throw err
        }
    }

    async delete(id) {
        try {
            let model = await this.repo.getOne({id:id})
            let result = await this.repo.delete(id)
            return result
        } catch (err) {
            throw err
        }
    }

}
