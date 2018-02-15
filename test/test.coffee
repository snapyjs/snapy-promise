{test, Promise} = require "snapy"


test (snap) =>
  # should have resolve value
  snap promise: Promise.resolve("resolve value")

test (snap) =>
  # should have reject value
  snap promise: Promise.reject("reject value")


test (snap) =>
  # should have resolve and reject value
  snap 
    obj: 
      resolve: Promise.resolve("resolve value")
      reject: Promise.reject("reject value")
    promise: ["resolve","reject"]