import { writable } from 'svelte/store'




const store = writable([], () => {
    artist_list();
    return () => { }
})

const artist_list = async () => {


    let response = await fetch(`api/artist_list`)
        .catch(error => { console.error(error); });

    const artist = await response.json();

    if (artist.error) {
        return null
    }
    return store.set(artist);
}

export default store;