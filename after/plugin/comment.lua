require('Comment').setup()
local ft = require('Comment.ft')

ft.set('hlsl', {'//%s', '/*%s*/'})
ft.set('shader', {'//%s', '/*%s*/'})
ft.set('shaderlab', {'//%s', '/*%s*/'})
