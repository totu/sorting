var mongo = require('mongojs'),
n = '123456789',
len = 10;

for (var k=0; k<=Math.pow(10,4)-10; k++){
  for (var i=0; i<100; i++){
    s = '';
    for (var x=0; x<len+k; x++){
      s += n.charAt(Math.floor(Math.random() * n.length));
    }
    console.log(s);
  }
}
