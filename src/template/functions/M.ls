window.M =
    data: -> S
    created: -> 
        window.S = @
        APP.config.globalProperties.S = @
    mounted: ->>
        F.start?!
    computed: {}

