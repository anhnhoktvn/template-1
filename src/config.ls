``
import 'font-awesome/css/font-awesome.css'
import { createApp, h } from 'vue'
import App from './App.vue'
import './registerServiceWorker'
import './assets/tailwind.css'

``

# import InfiniteLoading from 'vue-infinite-loading'
# app.use(InfiniteLoading)

window.F = {}
window.S = {}
window.C = {}
window.M = {}
window.I = {}


# functions
do ->
    r = require.context './template/functions', true, /\.ls$/
    for i in r.keys!
        r i
do ->
    r = require.context './app/functions', true, /\.ls$/
    for i in r.keys!
        r i
App.mixins = [M]
window.APP = app = createApp({
    render: -> h App
})

F.$t = APP.config.globalProperties.$t = (name) -> I[S.lang][name] || name
# components
c = (r, i) ->
    config = r i
    name = i.split '/'
            .pop!
            .replace /\.\w+$/, ''
    app.component name, config.default || config
do ->
    r = require.context './template/components', true, /\.(vue|ls)$/
    for i in r.keys!
        c r, i
do ->
    r = require.context './app/components', true, /\.(vue|ls)$/
    for i in r.keys!
        c r, i
do ->
    r = require.context './template/pages', true, /\.(vue|ls)$/
    for i in r.keys!
        c r, i
do ->
    r = require.context './app/pages', true, /\.(vue|ls)$/
    for i in r.keys!
        c r, i

app.config.globalProperties.F = F
app.config.globalProperties.S = S
app.config.globalProperties.C = C
app.mount('#app')