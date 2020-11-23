import axios from 'axios';

import {
  FETCH_ITEMS, fetchItemsSuccess, 
} from '../actions';

export default (store) => (next) => (action) => {
  switch (action.type) {
    case FETCH_ITEMS:



      axios.get('http://127.0.0.1:8000/omiso/products')


        .then((res) => {
          // ajouter parametre pour commande
          const addstate = res.data.map((d) => ({ ...d, quantity: 0 }));


          store.dispatch(fetchItemsSuccess(addstate));
        })
        .catch((err) => {

        });

    default:
      next(action);
  }
};
