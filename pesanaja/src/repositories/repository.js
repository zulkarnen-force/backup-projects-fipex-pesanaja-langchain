class Repository {
    
    constructor (model) {
        this.model = model
    }


    async insert(data) {
        try {
            await this.model.create(data)
        } catch (e) {
            throw e
        }
    }


    async list() {
        try {
            return await this.model.find()
        } catch (e) {
            throw e
        }
    }

    
    async getOne(query) {
        try {
            return this.model.findOne(query)
        } catch (err) {
            throw err
        }
    }

    
    async getById(id) {
        try {
            return this.model.findById(id)
        } catch (err) {
            throw err
        }
    }

    
    async deleteOne(query) {
        try {
            return this.model.deleteOne(query)
        } catch (err) {
            throw err
        }
    }
    
}


export default Repository