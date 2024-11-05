let data=[{"Name":"saravanan","Age":27,"LOCATION":"dubai"},
        {"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}];

let table=document.getElementById('table');
let row=document.createElement('tr');
let keys=Object.keys(data);
var th;
for (const element of keys) {
    console.log(keys[element])
    th=document.createElement('th');
    th.textContent=element;
    row.appendChild(th);
}
table.appendChild(row);