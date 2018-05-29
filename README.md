# snapy-promise

Plugin of [snapy](https://github.com/snapyjs/snapy).

Take a snapshot of a promise - when it resolves or rejects.

```js
{test} = require("snapy")

test((snap) => {
  // simple
  snap({promise: somePromise})
  // {resolved: {{resolvedValue}}}

  // plain
  snap({promise: somePromise, plain:true})
  // {{resolvedValue}}

  // transform promise to obj
  snap({
    obj: {
      someProp: somePromise,
      someOtherProp: someOtherPromise
    },
    promise: "someProp, someOtherProp"
    })
  // {
  //  someProp: {resolved:{{resolvedValue}}}
  //  someOtherProp: {resolved:{{resolvedValue}}}
  // }
})
```

## License
Copyright (c) 2017 Paul Pflugradt
Licensed under the MIT license.
