import express from 'express'
import cors from 'cors'

const app = express()

const PORT = 3000

app.use(cors())
app.use(express.json())

app.get('/', (req, res) => {
    res.send('Hello Docker!')
})

app.listen(PORT, () => {
    console.log(`Running on port: ${PORT}`)
})