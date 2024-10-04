//question 1

const arryNumbers=[]
arryNumbers.push(4)
arryNumbers.push(5)
arryNumbers.push(1)
arryNumbers.push(4)
arryNumbers.push(2)
arryNumbers.push(9)
arryNumbers.push(5)
arryNumbers.push(7)

arryNumbers.sort(asc);
arryNumbers.filter((item,index)=>arryNumbers.indexOf(item)==index);

//question 2

1) select * from products p inner join categories c
on p.category_id==c.id where c.name=='x' && p.available==true
order by c.name;


2) select c.id, max(p.price) from products p inner join categories c
on p.category_id==c.id group by c.id,p.price 

3) select c.id, count(p.id) from products p inner join categories c
on p.category_id==c.id group by c.id,p.id 

//question 3

<input type=text onchange="callApiRequest(x.text)">

function callApiRequest(text){
    $.ajax({
        url:controllername/actionname,
        data:text,
        content-type:'application/json'

    }).delay(2000).success(function(data){

    }).fail(function(error){

    })
}

//question 4

public async Task doSomeTask(){
    var task1= Task.Run(()=> fetchData1());
    var task2= Task.Run(()=>fetchData2());
    var result1=await task1();
    var result2=await task2();

    var results= Task.WhenAll(task1,task2);

    return;
}