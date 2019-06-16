function double(arr){
    arr2 = [];
    for (i = 0; i<arr.length; i++){
        arr2.push(arr[i]*2);
    }
    return arr2;
}

function double2(arr){
 return arr.map(x => x*2);   
}

function parimpar(x){
    if(x%2 == 0) return "par";
    else         return "impar";
    
}

arr = [1,2,3,4];
arr2 = double(arr);
arr3 = double2(arr);

console.log(arr); //original
console.log(arr2); //for
console.log(arr3); //map
console.log(arr.map(parimpar)); //par impar



Array.prototype.myUcase = function (){
    for(i=0;i<this.length;i++){
        this[i]  = this[i].toUpperCase();
    }
    return this;
};

Array.prototype.myMap = function(funct){
    for(i=0;i<this.length;i++){
        this[i]  = funct(this[i]);
    }
    return this;
};

var fruits = ["Banana","Orange"];
console.log(`\nOriginal: ${fruits}`);
console.log(`Upper: ${fruits.myUcase()}`);
var numbers = [1,2,3,4,5];
console.log(`\nOriginal: ${numbers}`);
console.log(`Par o Impar: ${numbers.myMap(parimpar)}`);
