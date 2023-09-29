import User from '../entities/user.js'


class Repository {
    constructor (model = User) {
        this.model = model
    }

    
    async create(data) {
        try {
            await this.model.create(data)
        } catch (e) {
            throw e
        }
    }


    async list() {
        try {
            return this.model.find();
        } catch (err) {
            throw err
        }
    }

    
    async findOne(query) {
        try {
            return this.model.findOne(query)
        } catch (err) {
            throw err
        }
    }

    
    async findById(id) {
        try {
            return this.model.findOne({id})
        } catch (err) {
            throw err
        }
    }

    
           
    async delete(id) {
        try {
            return this.model.deleteOne({id})
        } catch (err) {
            throw err
        }
    }


    async update(model, data) {
        try {
            let result = await model.updateOne(data)
            if (result instanceof Error) {
                throw result
            }
            return result
        } catch(err) {
            throw err
        }
    }
    
}

export default Repository