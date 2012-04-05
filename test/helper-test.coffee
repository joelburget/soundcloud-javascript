module("SC.Helper.merge")

test "Shallow merge 2 objects with the 2nd taking precedence", () ->
  deepEqual SC.Helper.merge({x: 1, y: 2, z: 3}, {z: 1}), {x: 1, y: 2, z: 1}

test "Shallow merge 2 arrays", () ->
  deepEqual SC.Helper.merge([1, 2, 3], [4, 5]), [1, 2, 3, 4, 5]