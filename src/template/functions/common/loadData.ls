F.loadData = ->
    data = JSON.parse localStorage.getItem C.NAME
    data = data || {}
    for k,v of data
        S[k] = v
