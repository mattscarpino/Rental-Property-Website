import axios from 'axios';

const requestConfig = {
    headers: {
        'Content-Type': 'application/json'
    }
};

export default {

    getAllPrices() {
        return axios.get('/api/price');
    },

    getAllPics() {
        return axios.get('/api/picture');
    },

    getAllOfferings() {
        return axios.get('/api/offering');
    },
    getAllRecommendations() {
        return axios.get('api/recommendation');
    },

}