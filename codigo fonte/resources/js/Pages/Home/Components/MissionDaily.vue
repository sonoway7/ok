<template>
    <div v-if="isLoading" class="">

    </div>
    <div v-else class="w-full flex flex-col">
        <MissionCard v-for="(m, idx) in missions" :mission="m" :index="idx" @updateMission="refreshData" />
    </div>
</template>


<script>

import HttpApi from "@/Services/HttpApi.js";
import MissionCard from "@/Pages/Home/Components/MissionCard.vue";

export default {
    props: [],
    components: {MissionCard},
    data() {
        return {
            isLoading: false,
            missions: null,
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
        refreshData: function() {
            this.getMissions();
        },
        getMissions: function() {
            const _this = this;
            _this.isLoading = true;

            HttpApi.get('missions?period=daily')
                .then(response => {
                    console.log(response.data);
                    _this.missions = response.data.missions;
                    _this.isLoading = false;
                })
                .catch(error => {
                    _this.isLoading = false;
                });
        },
    },
    created() {
        this.getMissions();
    },
    watch: {

    },
};
</script>

<style scoped>

</style>
