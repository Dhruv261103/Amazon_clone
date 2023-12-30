//import from packages
const express =require("express");

//import from other files
const authRouter=require("./routes/auth");

//init
const PORT=3000;
const app=express();

//middleware
app.use(authRouter);

app.listen(PORT,()=>{
    console.log(`connected port ${PORT}`);
}) 