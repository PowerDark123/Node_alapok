import{config} from './dbconfig.js'
import express, { request, response } from 'express'
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
app.put('/:id/:year',(request,response)=>{
    const {id,year} = request.params
    db.query('update books set year=? where id=?',[year,id],(err,result)=>{
        if(err)
            console.log(err)
        if(result.affectedRows==1)
            response.send({message:"Sikeres adatmódosítás!"})
        else
        response.send({message:"Sikertelen adatmódosítás!"})
    })

})
app.put('/',(request,response)=>{
    const {id,year,category} = request.body
    db.query('update books set year=?, category=? where id=?',[year,category,id],(err,result)=>{
        if(err)
            console.log(err)
        if(result.affectedRows==1)
            response.send({message:"Sikeres adatmódosítás!"})
        else
        response.send({message:"Sikertelen adatmódosítás!"})
    })

})
app.post('/',(request,response)=>{
    const {year,category,title,author} = request.body
    db.query('insert into books values (null,"?","?",?,"?")',[author,title,year,category],(err,result)=>{
        if(err)
            console.log(err)
        if(result.insertId)
            response.send({message:`Sikeres adatbeírás! id:${result.insertId}`})
        else
        response.send({message:"Sikertelen adatbeírás!"})
    })

})
app.delete('/',(request,response)=>{
    const {id} = request.body
    db.query('delete from books where id=?',[id],(err,result)=>{
        if(err)
            console.log(err)
        if(result.affectedRows==1)
            response.send({message:"Sikeres törlés!"})
        else
        response.send({message:"Sikertelen törlés!"})
    })

})
app.get('/kategoria/:category',(request,response)=>{
    const {category} = request.params
    db.query('select author,title from books where category=?',[category],(err,result)=>{
        if(err)
            console.log(err)
        else
            response.send(result)
    })
})






app.listen(5000,()=> console.log('server listening on port 5000...'))