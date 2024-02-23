<template>
    <BaseLayout>
        <LoadingComponent :isLoading="isLoading">
            <div class="text-center">
                <span>{{ $t('Loading data from the platform') }}</span>
            </div>
        </LoadingComponent>

        <div v-if="!isLoading" class="container mx-auto p-4 mt-16">
            <div class="grid mb-4 mt-1">
                <div v-if="setting" class="">
                    <div class="relative">
                        <img class="w-full h-auto max-w-full img-banner hidden dark:block" :src="`/assets/images/banners/banner-1.png`" alt="">
                        <img class="w-full h-auto max-w-full img-banner block dark:hidden" :src="`/assets/images/banners/banner-1-white.png`" alt="">
                        <div class="absolute top-0 left-0 bottom-0 p-3 md:p-10">
                            <div v-if="!isAuthenticated" class="my-auto h-full content-center">
                                <div>
                                    <h1 class="text-lg md:text-4xl text-gray-800 dark:text-gray-200 font-bold mb-1 md:mb-1">{{ $t('Welcome to') }} {{ setting.software_name }}!</h1>
                                    <p class="font-normal text-[12px] text-gray-800 dark:text-gray-400 md:text-lg md:font-semibold">{{ $t('Sign up and receive double balance bonus') }}</p>

                                </div>
                            </div>
                            <div v-if="isAuthenticated" class="my-auto h-full content-center">
                                <div>
                                    <h1 class="text-lg md:text-4xl text-gray-600 dark:text-gray-200 font-bold mb-1 md:mb-1">{{ $t('Hello') }} {{ userData?.name }}</h1>
                                    <p class="font-normal text-[12px] text-gray-500 dark:text-gray-400 md:text-lg">{{ $t('Welcome to') }} {{ setting.software_name }}, {{ $t('multiply your balance on the first deposit') }}.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Lista de jogos originais -->
            <div v-if="originals.length > 0" class="game-list flex flex-col mt-5 relative mb-6">
                <div class="w-full flex justify-between mb-3">
                    <h2 class="text-xl font-bold">{{ $t('Original') }}</h2>
                    <div class="flex">
                        <RouterLink :to="{ name: 'casinosAll', params: { provider: 'originals', game: 'all' } }" class="hover:bg-gray-500/20 bg-gray-400/20 dark:bg-gray-800 hover:dark:bg-gray-700 px-3 py-2 mr-2 rounded">
                            {{ $t('See all') }}
                        </RouterLink>
                        <button @click.prevent="ckCarouselOriginals.prev()" class="hover:bg-gray-500/20 bg-gray-400/20 dark:bg-gray-800 hover:dark:bg-gray-700 px-3 py-2 rounded">
                            <i class="fa-solid fa-angle-left"></i>
                        </button>
                        <button @click.prevent="ckCarouselOriginals.next()" class="hover:bg-gray-500/20 bg-gray-400/20 dark:bg-gray-800 hover:dark:bg-gray-700 px-3 py-2 rounded">
                            <i class="fa-solid fa-angle-right"></i>
                        </button>
                    </div>
                </div>

                <Carousel ref="ckCarouselOriginals" v-bind="settingsGames" :breakpoints="breakpointsGames">
                    <Slide v-if="isLoading" v-for="(game, index) in 10" :index="index">
                        <div  role="status" class="w-full flex items-center justify-center h-48 mr-6 max-w-sm bg-gray-300 rounded-lg animate-pulse dark:bg-gray-700 text-4xl">
                            <i class="fa-duotone fa-gamepad-modern"></i>
                        </div>
                    </Slide>

                    <Slide v-if="originals && !isLoading" v-for="(game, index) in originals" :index="index">
                        <CassinoGameCard
                            :index="index"
                            :title="game.name"
                            :cover="`/storage/`+game.cover"
                            :link="game.uuid"
                            type="originals"
                        />
                    </Slide>
                </Carousel>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 gap-4 mb-4">
                <div class="casino-sports-container bg-gray-50 dark:bg-[#1A242D] casino">
                    <div class="my-auto h-full content-center">
                        <div class="w-[65%]">
                            <h1 class="text-4xl font-bold mb-3">{{ $t('Casino') }}</h1>
                            <p class="text-sm text-gray-400 dark:text-gray-300 ">{{ $t('Enjoy our exclusive selection of slots, live dealers and original games') }}.</p>
                        </div>
                        <div class="mt-5 flex">
                            <RouterLink :to="{ name: 'casinos' }" active-class="top-register-active" class="btn-primary text-center min-w-[200px]">
                                <span class="uppercase font-semibold">{{ $t('go to casino') }}</span>
                            </RouterLink>
                        </div>
                    </div>
                </div>
                <div class="casino-sports-container bg-gray-50 dark:bg-[#1A242D] sport">
                    <div class="my-auto h-full content-center">
                        <div class="w-[65%]">
                            <h1 class="text-4xl font-bold mb-3">{{ $t('Sport') }}</h1>
                            <p class="text-sm text-gray-400 dark:text-gray-300 ">{{ $t('Our intuitive sports betting is made for new and experienced players') }}.</p>
                        </div>
                        <div class="mt-5 flex">
                            <RouterLink :to="{ name: 'sports' }" active-class="top-register-active" class="btn-primary text-center min-w-[200px]">
                                <span class="uppercase font-semibold">{{ $t('go to sport') }}</span>
                            </RouterLink>
                        </div>
                    </div>
                </div>
            </div>

            <!-- lista de jogos fivers -->
            <ShowProvidersFivers v-for="(provider, index) in providersFivers" :provider="provider" :index="index" />

            <ShowCarousel v-for="(category, index) in categories" :category="category" :index="index" />

            <div v-if="isAuthenticated" class="flex items-center justify-center h-48 mb-4">
                <div class="grid py-4">
                    <h1 class="text-lg font-bold mb-3 text-center">{{ $t('PREFERRED PAYMENT METHOD') }}</h1>
                    <div class="payment-list flex items-center">
                        <img :src="`/assets/images/icons/pix.svg`" alt="" width="128">

                        <div class="divider"></div>

                        <div>

                        </div>
                    </div>
                </div>
            </div>


        </div>
    </BaseLayout>
</template>

<script>
import { Carousel, Navigation, Slide } from 'vue3-carousel';
import {onMounted, ref} from "vue";

import BaseLayout from "@/Layouts/BaseLayout.vue";
import MakeDeposit from "@/Components/UI/MakeDeposit.vue";
import {RouterLink, useRoute} from "vue-router";
import {useAuthStore} from "@/Stores/Auth.js";
import LanguageSelector from "@/Components/UI/LanguageSelector.vue";
import CassinoGameCard from "@/Pages/Cassino/Components/CassinoGameCard.vue";
import HttpApi from "@/Services/HttpApi.js";
import ShowCarousel from "@/Pages/Home/Components/ShowCarousel.vue";
import {useSettingStore} from "@/Stores/SettingStore.js";
import ShowProvidersFivers from "@/Pages/Home/Components/ShowProvidersFivers.vue";
import LoadingComponent from "@/Components/UI/LoadingComponent.vue";

export default {
    props: [],
    components: {
        LoadingComponent,
        ShowProvidersFivers,
        ShowCarousel, CassinoGameCard, Carousel, Navigation, Slide, LanguageSelector, MakeDeposit, BaseLayout, RouterLink },
    data() {
        return {
            isLoading: true,
            settingsGames: {
                itemsToShow: 2.5,
                snapAlign: 'start',
            },
            breakpointsGames: {
                700: {
                    itemsToShow: 3.5,
                    snapAlign: 'center',
                },
                1024: {
                    itemsToShow: 6,
                    snapAlign: 'start',
                },
            },
            providersFivers: null,
            gamesSlotgrator: null,
            originals: null,
            categories: null,
        }
    },
    setup(props) {
        const ckCarouselOriginals = ref(null)

        onMounted(() => {

        });

        return {
            ckCarouselOriginals
        };
    },
    computed: {
        userData() {
            const authStore = useAuthStore();
            return authStore.user;
        },
        isAuthenticated() {
            const authStore = useAuthStore();
            return authStore.isAuth;
        },
        setting() {
            const settingStore = useSettingStore();
            return settingStore.setting;
        }
    },
    mounted() {

    },
    methods: {
        getGamesFivers: async function() {
            const _this = this;
            return await HttpApi.get('games/fivers')
                .then(async response =>  {
                    _this.providersFivers = response.data.providers;
                })
                .catch(error => {
                    Object.entries(JSON.parse(error.request.responseText)).forEach(([key, value]) => {

                    });
                });
        },
        getOriginalsGames: async function() {
            const _this = this;
            return await HttpApi.get('games/originals')
                .then(async response =>  {
                    _this.originals = response.data.originals;
                })
                .catch(error => {
                    Object.entries(JSON.parse(error.request.responseText)).forEach(([key, value]) => {
                        console.log(`${value}`);
                    });
                });
        },
        getGamesSlotgrator: async function() {
            const _this = this;

            return await HttpApi.get('games/slotegrator')
                .then(async response =>  {
                    _this.categories = response.data.categories;
                    //_this.gamesSlotgrator = response.data.gamesSlotgrator;
                })
                .catch(error => {
                    Object.entries(JSON.parse(error.request.responseText)).forEach(([key, value]) => {
                        console.log(`${value}`);
                    });
                });
        },
        getSlotgratorGames: async function() {
            const _this = this;

            await HttpApi.get('providers/slotegrator')
                .then(async response =>  {
                    _this.gamesSlotgrator = response.data.gamesSlotgrator;
                })
                .catch(error => {
                    Object.entries(JSON.parse(error.request.responseText)).forEach(([key, value]) => {
                        console.log(`${value}`);
                    });
                });
        },
        getLoadingAllData: async function() {
            await this.getGamesFivers();
            await this.getOriginalsGames();
            await this.getSlotgratorGames();
            await this.getGamesSlotgrator();

            this.isLoading = false;
        },
    },
    created() {

        this.getLoadingAllData();
    },
    watch: {


    },
};
</script>
