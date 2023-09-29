import Repository from "../repositories/repository.js"

class Service {
    constructor(repo = Repository) {
        this.repo =repo
    }

    async getAll() {
        try {
            return await this.repo.list()
        } catch (err) {
            throw err
        }
    }

    async create(data) {
        try {
            return await this.repo.create(data)
        } catch (err) {
            throw err
        }
    }


    async getById(id) {
        try {
             let result = await this.repo.findById(id)
             if (!result) {
                return {result, exists: false}
             }
             return {result, exists: true}
        } catch (err) {
            throw err
        }
    }


    async getByQuery(query) {
        try {
            return await this.repo.findOne(query)
        } catch (err) {
            throw err
        }
    }


    async deleteById(id) {
        try {
            let model = this.repo.findById(id)
            let result = this.repo.delete(id)
            return result
        } catch (err) {
            throw err
        }
    }


    async update(id, reqBody) {
        try {
            let model = await this.repo.findById(id)
            let updated = await this.repo.update(model, reqBody)
            return updated
        } catch (err) {
            throw err
        }
    }
}

export default Service