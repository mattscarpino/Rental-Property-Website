import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)


export default new Vuex.Store({
    state: {
        photoGallery: [
            {
                image: require('../../assets/HHentrance.png'),
                id: 0
            },
            {
                image: require('../../assets/HHmasterbed.png'),
                id: 1
            },
            {
                image: require('../../assets/HHguestbed.png'),
                id: 2
            },
            {
                image: require('../../assets/HHlivingroom.png'),
                id: 3
            },
            {
                image: require('../../assets/HHlivingroomblinds.png'),
                id: 4
            },
            {
                image: require('../../assets/HHmapchairs.png'),
                id: 5
            },
            {
                image: require('../../assets/HHmasterbath.png'),
                id: 6
            },
            {
                image: require('../../assets/HHguestbath.png'),
                id: 7
            },
        ],
    },
})