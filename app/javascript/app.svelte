<script>
  import {onMount} from "svelte"
  import Loading from "./UI/Loading.svelte";
  import artist from "./service/artists";
  import Artists from "./components/Artists.svelte";
</script>

<div class="grid grid-cols-1 md:grid-cols-4 py-16 gap-5">
  {#each $artist || artist as artists}
    <Artists artists={artists[0]} />
  {:else}
    <Loading />
  {/each}
</div>
