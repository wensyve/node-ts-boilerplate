/* ========== Imports ========= */
import express from "express"
import dotenv from "dotenv"
import cors from "cors"

/* ====== Setup ====== */
dotenv.config() // setup env variables
const app = express() // create express app
const port = process.env.PORT || 5000 // set port


/* ====== middlewares ===== */
app.use(cors())
app.use(express.json()) // enable json parsing

/* ====== Functions ====== */
export function handleServerError(err: any) {
    console.error(err)
}


/* ====== Routes ====== */
app.get("/", (req, res) => res.send("Node-TS boilerplate server is up..."))


// launch the app
app.listen(port, () => console.log(`backend running on port ${port}`))
