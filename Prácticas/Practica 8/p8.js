//Ejercicio1
let tasks = [

{
    'name'    : 'Buy milk from the shop',
    'duration': 20,
    'priority': 1
},
{
    'name'    : 'Clean the house',
    'duration': 120,
    'priority': 3
},
{
    'name'    : 'Study JS functions',
    'duration': 180,
    'priority': 1
},

];

function namesIt(arr){
    name = [];
    for(i = 0; i<arr.length; i++){
        name.push(arr[i].name);
    }
    return name;
}

function namesFn(arr){
    return arr.map(x => x.name);
}

console.log(`Ejercicio 1 It: ${namesIt(tasks)}`);
console.log(`Ejercicio 1 Fn: ${namesFn(tasks)}`);

//Ejercicio 2

function priorityIt(arr){
    priorities = [];
    for(i=0;i<arr.length;i++){
        if( arr[i].priority == 1) priorities.push(arr[i]);
    }
    return priorities;
}

function priorityFn(arr){
    return arr.filter(x => x.priority == 1);
}

console.log("Ejercicio 2 It:",priorityIt(tasks));
console.log("Ejercicio 2 Fn:",priorityFn(tasks));

//Ejercicio 3

function totDurationIt(arr){
    accum = 0;
    for(i = 0; i < arr.length; i++){
        accum += arr[i].duration;
    }
    return accum;
}


function totDurationFn(arr){
    return arr.reduce((acc, item) => acc+= item.duration,0);
}

console.log("Ejercicio 3 It:",totDurationIt(tasks));
console.log("Ejercicio 3 Fn:",totDurationFn(tasks));

//Ejercicio 4

const vehicles = [
    {make: 'Honda',  model: 'CR-V',     type: 'suv',   price:24045},
    {make: 'Honda',  model: 'Accord',   type: 'sedan', price:22455},
    {make: 'Mazda',  model: 'Mazda 6',  type: 'sedan', price:24195},
    {make: 'Mazda',  model: 'CX-9',     type: 'suv',   price:31520},
    {make: 'Toyota', model: '4Runner',  type: 'suv',   price:34210},
    {make: 'Toyota', model: 'Sequoia',  type: 'suv',   price:45560},
    {make: 'Toyota', model: 'Tacoma',   type: 'truck', price:24320},
    {make: 'Ford',   model: 'F-150',    type: 'truck', price:27110},
    {make: 'Ford',   model: 'Fusion',   type: 'sedan', price:22120},
    {make: 'Ford',   model: 'Explorer', type: 'suv',   price:31660},
];
let type = "suv";
function meanPriceIt(arr,type){
    accum = 0;
    ammount = 0;
    for(i = 0; i < arr.length; i++){
        if(arr[i].type == type){
            accum   += arr[i].price;
            ammount += 1;
        } 
    }
    return accum/ammount;
}

function meanPriceFn(arr,type){
    return (arr.filter(x => x.type == type)).reduce(
        (acc, item,index,array) => {
            acc+= item.price; 
            if(index == array.length-1) {
                return acc/array.length;} 
            else {
                return acc;}},0 );
}

console.log("Ejercicio 4 It:",meanPriceIt(vehicles,type));
console.log("Ejercicio 4 Fn:",meanPriceFn(vehicles,type));

//Ejercicio 5

var personnel = [

{
    id            : 5,
    name          : "Luke Skywalker",
    pilotingScore : 98,
    shootingScore : 56,
    isForceUser   : true,
},
{
    id            : 82,
    name          : "Sabine Wren",
    pilotingScore : 73,
    shootingScore : 99,
    isForceUser   : false,
},
{
    id            : 22,
    name          : "Zeb Orellios",
    pilotingScore : 20,
    shootingScore : 59,
    isForceUser   : false,
},
{
    id            : 15,
    name          : "Ezra Bridger",
    pilotingScore : 43,
    shootingScore : 67,
    isForceUser   : true,
},
{
    id            : 11,
    name          : "Caleb Dume",
    pilotingScore : 71,
    shootingScore : 85,
    isForceUser   : true,
},

];
let force = true;
function totScoreIt(arr,force){
    totScoreP = 0;
    totScoreS = 0;
    for(i = 0; i < arr.length; i++){
        if(arr[i].isForceUser == force){
            totScoreP += arr[i].pilotingScore;
            totScoreS += arr[i].shootingScore;
        }
    }
    return [totScoreP,totScoreS];
}

function totScoreFn(arr,force){
    return [ (arr.filter(x=> x.isForceUser == force)).reduce(
        (acc, item) => acc+= item.pilotingScore,0),
            (arr.filter(x=> x.isForceUser == force)).reduce(
                (acc, item) => acc+= item.shootingScore,0)];
}

ejer5it = totScoreIt(personnel,force);
console.log(`Ejercicio 5 it: Total Piloting ${ejer5it[0]} y Total Shooting ${ejer5it[1]}`)
ejer5Fn = totScoreFn(personnel,force);
console.log(`Ejercicio 5 it: Total Piloting ${ejer5Fn[0]} y Total Shooting ${ejer5Fn[1]}`)