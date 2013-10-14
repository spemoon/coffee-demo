define(require, exports, module) ->
    $ = require('$')
    tpl = require('./tpl/tpl')

    tplHtml = tpl.render({var: 'hello'})

    # 4.9 解构赋值
    someObject = {a: 'value for a', b: 'value for b'}
    {a, b} = someObject
    console?.log "a is'#{a}', b is'#{b}"

    square = (x) -> x * x

    #4.11 私有变量
    type = do ->
        classToType = {}
        for name in 'Boolean Number String Function Array Date RegExp Undefined Null'.split(' ')
            classToType["[object " + name + "]"] = name.toLowerCase()

        (obj) ->
            strType = Object::toString.call(obj)
            classToType[strType] or 'object'