const math = {
    sum : function _doSum (a, b){
        console.log('Sum:', a + b);
    },
    subtract : function  _doSubtract (a,b) {
        console.log('Subtract', a-b);
    },
    multiply: function _doMultiply(a,b){
        console.log('Multiplication: ', a*b);
    },
    divide: function _doDivide (a,b){
        console.log('Divide: ', a/b)
    }
}
math.sum(1, 1);
math.subtract(1, 1);
math.multiply(5, 2);
math.divide(5, 2);