<script>
    export let artists;

    const { name, id, twitter } = artists;
</script>

<div class="card text-center shadow-2xl">
    <div class="card-body">
        <h2 class="card-title">{name}</h2>

        <div class="justify-center card-actions">
            <a target="_blank" href="https://twitter.com/{twitter}" class="btn btn-outline btn-accent"
                >{twitter}</a
            >
        </div>
    </div>
</div>
