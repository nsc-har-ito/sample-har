//1.配列の中を昇順に並べる
function shojun (a,b) {
    return a-b;
}

let number = [1,5,3,10,8];
number.sort(shojun);

console.log(number);


//2.配列の中を降順に並べる
function koujun (a,b) {
    return b-a;
}

let numbers = [1,5,3,10,8];
numbers.sort(koujun);

console.log(numbers);


//3.フィボナッチ数列
function fib(n) {
    let list = []
    let num = 0

    for (let i = 0 ; i < n; i++) {
        if(i<2) {
            num = 1;
        }else{
            num = list[i-1]+list[i-2]
        }
        list.push(num);
        }
        return list
    }

    function abc(n) {
        a=fib(n)
        a.forEach(element => {
            console.log(element)
        });
    }
    abc(6)
    



//4.素数かどうかチェックする
function sosuCheck (a) {
    if (a==2) {
    console.log("素数です"); 
    } else {
     for (let b=2 ; a>b ; b++) {
        if (a%b == 0) {
    console.log("素数ではありません");
    break;
    } 
    if (b + 1 == a) {
    console.log("素数です");
            }
        }
    }
}

sosuCheck(17);
