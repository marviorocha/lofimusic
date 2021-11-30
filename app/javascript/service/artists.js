import { writable } from 'svelte/store'




const store = writable([], () => {
    artist_list();
    return () => { }
})

const artist_list = async () => {


    let response = await fetch(`http://localhost:3000/api/artist_list`)
        .catch(error => { console.error(error); });

    const artist = await response.json();

    if (artist.error) {
        return null
    }
    return store.set(artist);
}

export default store;