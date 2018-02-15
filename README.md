# snapy-promise

Plugin of [snapy](https://github.com/snapyjs/snapy).

Take a snapshot of a promise - when it resolves or rejects.

```js
{test} = require("snapy")

test((snap) => {
  // simple
  snap({promise: somePromise})

  // transform promise to obj
  snap({
    obj: {
      someProp: somePromise,
      someOtherProp: someOtherPromise
    }
    promise: "someProp, someOtherProp"
    })
})
```

## License
Copyright (c) 2017 Paul Pflugradt
Licensed under the MIT license.
