<template>
    <BaseLayout>
        <div class="container p-4">
            <div class="mission-body">
                <div class="mission-title">
                    <h1 class="mb-4 text-3xl font-bold text-gray-900 dark:text-white md:text-4xl lg:text-5xl">
                        <span class="text-transparent bg-clip-text bg-gradient-to-r to-emerald-600 from-sky-400">
                            {{ $t('Mission Center') }}
                        </span>
                    </h1>
                    <p class="text-lg font-normal text-gray-500 lg:text-xl dark:text-gray-400 uppercase">
                        {{ getDayOfWeek() }}
                    </p>
                </div>

                <div class="flex justify-between">
                    <div class="">

                    </div>
                    <div>

                    </div>
                </div>




            </div>
        </div>
    </BaseLayout>
</template>


<script>

import BaseLayout from "@/Layouts/BaseLayout.vue";

export default {
    props: [],
    components: {BaseLayout},
    data() {
        return {
            isLoading: false,
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
        getDayOfWeek() {
            const daysOfWeek = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];
            const currentDate = new Date();
            const dayOfWeek = daysOfWeek[currentDate.getDay()];
            return dayOfWeek;
        }
    },
    watch: {

    },
};
</script>

<style scoped>

</style>
