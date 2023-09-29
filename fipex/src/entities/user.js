import mongoose  from 'mongoose'
import { Schema } from 'mongoose';
import bcryptPassword from '../utils/bcrypt.js';

const userSchema = new Schema({
  id: {
    type:String,
    unique: true,
    required: true,
  },
  email:{
    type:String,
    unique: true,
    required: true,
  },
  displayName: {
    type:String,
  },
  password: {
    type:String,
    required: true
  },
  phoneNumber: String,
  emailVerfied: {
    type: Boolean,
    default: false,
  },
  disabled:   {
    type: Boolean,
    default: false,
  },
  photoURL:   {
    type: String,
    default: "",
  },
  createdAt: {
    type: Date,
    default: Date.now
  },
  updatedAt: {
    type: Date,
    default: Date.now
  },
});


userSchema.pre("save", function (next) {
  if (this.password && this.isModified("password")) {
    try {
      this.password = bcryptPassword.hashPassword(this.password)
      console.log('preload ', this.password)
      next()
    } catch (err) {
      next(err)
    }
  }
})


const User = mongoose.model('User', userSchema);

export default User