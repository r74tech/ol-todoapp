import applyCaseMiddleware from 'axios-case-converter';
// import axios from 'axios';
import axios from './axios';
import Cookies from 'js-cookie';

const options = {
    ignoreHeaders: true,
}

const client = applyCaseMiddleware(
    axios.create({
        baseURL: 'http://localhost:8000',
        headers: {
            common: {
                "X-CSRF-Token": Cookies.get("CSRF-TOKEN"),
                "X-Requested-With": "XMLHttpRequest",
            },
        },
        withCredentials: true,
    }),
    options,
);


export default client;