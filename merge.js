function merge(array, begin, begin_right, end)
{
  for(;begin<begin_right; ++begin) {
    if(array[begin]>array[begin_right]) {
      var v=array[begin];
      array[begin]=array[begin_right];
      insert(array, begin_right, end, v);
    }
  }
}

function msort(array, begin, end)
{
  var size=end-begin;
  if(size<2) return;

  var begin_right=begin+Math.floor(size/2);

  msort(array, begin, begin_right);
  msort(array, begin_right, end);
  merge(array, begin, begin_right, end);
}

function merge_sort(array)
{
  msort(array, 0, array.length);
}

Array.prototype.swap=function(a, b)
{
  var tmp=this[a];
  this[a]=this[b];
  this[b]=tmp;
}

function insert(array, begin, end, v)
{
  while(begin+1<end && array[begin+1]<v) {
    array.swap(begin, begin+1);
    ++begin;
  }
  array[begin]=v;
}

function merge(a)
{
  array = a
  merge_sort(array);
  return a
}

merge([1,3,2]);
