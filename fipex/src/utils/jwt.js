import jwt from 'jsonwebtoken'

function generateAccessToken(payload) {
    return jwt.sign(payload, process.env.JWT_SECRET, { expiresIn: '1800s' });
}


function verifyToken(token = "")
{
    return jwt.verify(token, process.env.JWT_SECRET);
    
}

export default generateAccessToken