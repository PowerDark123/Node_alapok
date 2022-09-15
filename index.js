import{config} from './dbconfig.js'
import express from 'express'
import mysql from 'mysql'

const app = express()

app.use(express.json())
const db=mysql.createConnection(config)

app.get('/',(request,response)=>{
    db.query('select id,author from books group by author order by author',(err,result)=>{
        if(err)
            console.log(err)
        else
            response.send(result)
    })
})
app.get('/szerzo/:author',(request,response)=>{
    const {author} = request.params
    console.log("szerzoben")
    db.query('select title from books where author=? order by title',[author],(err,result)=>{
        if(err)
            console.log(err)
        else
            response.send(result)
    })
})
app.get('/category/:category/year/:year',(request,response)=>{
    const {category,year} = request.params

    db.query('select author,title,year from books where year>=? and category=?',[year,category],(err,result)=>{
        if(err)
            console.log(err)
        else
            response.send(result)
    })
})
app.get('/id/:id',(request,response)=>{
    const {id} = request.params
    db.query('select author,title,year,category from books where id=?',[id],(err,result)=>{
        if(err)
            console.log(err)
        else
            response.send(result)
    })
})




app.listen(5000,()=> console.log('server listening on port 5000...'))