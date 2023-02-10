//  3. Create a function that returns count from Array of objects where age > x. x is dynamic

let Array = [
    {
        id: '1', name: 'John', age: '10'
    },
    {
        id: '2', name: 'Doe', age: '40'
    },
    {
        id: '3', name: 'Kathy', age: '29'
    }
];

function checkAge(age) {
    let count=0;
    for(let i=0; i<Array.length; i++){
        if (age < Array[i].age) {
            count++;
        }
    }
    return count;
}
console.log(checkAge(25));