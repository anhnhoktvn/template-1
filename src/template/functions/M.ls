window.M =
    data: -> S
    created: -> 
        F.l \created
        window.S = @
        APP.config.globalProperties.S = @
    mounted: ->>
        F.l \mounted
        F.start?!
    computed: {}

