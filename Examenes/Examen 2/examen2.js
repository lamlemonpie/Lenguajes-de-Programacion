//Ejercicio1 

data = [-15,-5,0,5,10,15];

function func (x){
    return x*x + 8*x + 5;
}

function appfunc(data,func){
    return data.map( x => func(x) );
}

console.log((`Ejercicio 1 Fn: ${appfunc(data,func)}`));


//Ejercicio2

users = [
    {id : 11, name : 'Adam',    age : 23, group : 'editor'},
    {id : 12, name : 'John',    age : 28, group : 'admin'},
    {id : 13, name : 'Willian', age : 34, group : 'editor'},
    {id : 14, name : 'Olvier',  age : 28, group : 'admin'},
];

function edad(arr){
    return arr.filter(x=> x.age >= 30).map(x=> x.name);
}

console.log((`Ejercicio 2 Fn: ${edad(users)}`));

//Ejercicio3

function prom(arr){
    return arr.filter(x=>x.group != 'admin').reduce(
        (acc, item,index,array) => {
            acc+= item.age; 
            if(index == array.length-1) {
                return acc/array.length;} 
            else {
                return acc;}},0 );
}

console.log((`Ejercicio 3 Fn: ${prom(users)}`));

//Ejercicio4

function spiralSum(n){
    if(n == 1)  return 1;
    return (4*n*n - 6*(n-1) + spiralSum(n-2));
}
console.log((`Ejercicio 4 2: ${spiralSum(1001)}`));