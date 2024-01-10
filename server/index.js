//import from packages
const express =require("express");
const mongoose=require("mongoose");

//import from other files
const authRouter=require("./routes/auth");

//init
const PORT=3000;
const app=express();
const DB="mongodb+srv://dhruv2611:dhruv2611@cluster0.selx26m.mongodb.net/?retryWrites=true&w=majority";

//middleware
app.use(express.json());
app.use(authRouter);

//Connection
mongoose.connect(DB).then(()=>{
    console.log("Connection Succefully");
}).catch(e=>{console.log(e);})

app.listen(PORT,"0.0.0.0",()=>{
    console.log(`connected port ${PORT}`);
}) 