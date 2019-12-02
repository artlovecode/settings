const ReadOnly = (obj) => {
  const keys = Object.keys(obj);
  const newObj = {};

  keys.forEach((k) => {
    const val = obj[k];
    Object.defineProperty(newObj, k, { get() { return val; }, set() { throw new Error(`Can't set property ${k} on readonly object`); } });
  });
  return newObj;
};

const x = ReadOnly({ a: 2, b: 4 });

console.log(x.a, x.b);
x.b = 15;
console.log(x.b);
