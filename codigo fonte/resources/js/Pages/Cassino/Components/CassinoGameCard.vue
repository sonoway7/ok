<template>
    <div class="item-game bg-gray-400/20 hover:bg-gray-500/20 text-gray-700 dark:bg-gray-800 hover:dark:bg-gray-700 w-full h-auto mr-4 cursor-pointer">
        <RouterLink v-if="type === 'originals'" :to="{ name: 'casinoOriginalSingle', params: { slug: link } }">
            <img :src="cover" alt="" class="w-full h-full rounded-xl">
        </RouterLink>
        <RouterLink v-if="type === 'slotegrator'" :to="{ name: 'casinoSingle', params: { slug: link } }">
            <img :src="cover" alt="" class="w-full h-full rounded-xl">
        </RouterLink>
        <RouterLink v-if="type === 'salsa'" :to="{ name: 'casinoSalsaSingle', params: { slug: link } }">
            <img :src="cover" alt="" class="w-full h-full rounded-xl">
        </RouterLink>
        <a v-if="type === 'fivers'" :href="`/games/fivers/`+link">
            <img :src="cover" alt="" class="w-full h-full rounded-xl">
        </a>
        <div class="flex justify-between w-full text-gray-700 dark:text-gray-400 px-3 py-2">
            <span class="truncate ">{{ title }}</span>
            <button >
                <img :src="`/assets/images/icons/info-game.svg`" alt="" width="29">
            </button>
        </div>
    </div>

</template>


<script>
import { RouterLink } from "vue-router";

export default {
    props: ['cover', 'title', 'index', 'link', 'type'],
    components: { RouterLink },
    data() {
        return {
            isLoading: false,
            modalGame: null,
        }
    },
    setup(props) {


        return {};
    },
    computed: {

    },
    mounted() {



    },
    methods: {

    },
    created() {

    },
    watch: {

    },
};
</script>

<style scoped>

</style>
