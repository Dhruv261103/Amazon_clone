const express =require('express');

const authRouter=express.Router();

authRouter.get("/user" , (req,res)=>{
    res.json({'name': "Dhruv"});
})

module.exports=authRouter;