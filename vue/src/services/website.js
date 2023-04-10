import axios from 'axios';

const requestConfig = {
    headers: {
        'Content-Type': 'application/json'
    }
};

export default {

    getAllPrices(){
        return axios.get('/api/prices');
    },

    getAllPics(){
        return axios.get('/api/pictures');
    },

}