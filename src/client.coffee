prop = "promise"
module.exports = client: ({snap,position,util}) ->

  snap.hookIn position.init, util.normalizeMapping.bind null, prop
  snap.hookIn position.before-2, 
    util.processMapping.bind null, prop,  (parent,name,promise) ->
      set = (val) -> parent[name] = val
      promise
      .then (val) -> set(resolved:val)
      .catch (val) -> set(rejected:val)
