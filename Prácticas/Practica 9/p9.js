//Ejercicio 1
var celsius = [-15,-5,0,10,16,20,24,32];
function celToFar(cel){
    return cel.map(x => (x*9/5 + 32));
}

console.log(`\nEjercicio 1: ${celToFar(celsius)}`);

//Ejercicio 2
var users = [
    {id: 11, name: 'Adam',    age: 23, group: 'editor'},
    {id: 47, name: 'John',    age: 28, group: 'admin'},
    {id: 85, name: 'William', age: 34, group: 'editor'},
    {id: 97, name: 'Oliver',  age: 28, group: 'admin'}
];

function nameIncludes(arr,letter){
    return arr.filter( x => x.name.includes(letter) == true );
}

console.log("\nEjercicio 2:",nameIncludes(users,"l"));

//Ejercicio 3
function isAdmin(arr,group){
    return arr.map(  x => { if(x.group == group) return true;  else  return false;   }   );
}
console.log(`\nEjercicio 3: ${isAdmin(users,"admin")}`);

//Ejercicio 4
function frequency(arr){
    return arr.reduce( (acc,item,index,array) => {
        acc[item.group] = (acc[item.group] || 0) + 1;
        return acc;
    }
    ,[]);
}

console.log("\nEjercicio 4:",frequency(users));

var arr = [
    {name: 'luna',     sex: 'f', age: 7,   species: 'dog'},
    {name: 'jimmy',    sex: 'm', age: 122, species: 'human'},
    {name: 'snoop',    sex: 'm', age: 60,  species: 'human'},
    {name: 'jennifer', sex: 'f', age: 250, species: 'human'},
    {name: 'yeller',   sex: 'f', age: 20,  species: 'dog'},
];


//Ejercicio 5
function mean(arr,specie){
    return (arr.filter(x => x.species == specie)).reduce(
        (acc, item,index,array) => {
            acc+= item.age; 
            if(index == array.length-1) {
                return acc/array.length;} 
            else {
                return acc;}},0 ); 
}

console.log(`\nEjercicio 5: ${mean(arr,"dog")}`);