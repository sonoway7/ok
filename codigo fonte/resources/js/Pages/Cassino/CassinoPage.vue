<template>
    <BaseLayout>
        <LoadingComponent :isLoading="isLoading">
            <div class="text-center">
                <span>{{ $t('Loading the best games') }}</span>
            </div>
        </LoadingComponent>

        <div v-if="!isLoading" class="container mx-auto px-2 lg:px-4 py-2 lg:py-6">
            <div class="mx-3 md:mx-4">
                <Carousel v-bind="settings" :breakpoints="breakpoints" ref="carouselBanner">
                    <Slide v-for="(banner, index) in banners" :key="index">
                        <div class="carousel__item rounded-2xl w-full">
                            <a :href="banner.link" class="w-full h-full bg-blue-800 rounded-2xl">
                                <img :src="`/storage/`+banner.image" alt="" class="h-full w-full rounded-2xl">
                            </a>
                        </div>
                    </Slide>

                    <template #addons>
                        <navigation>
                            <template #next>
                                <i class="fa-solid fa-chevron-right text-white"></i>
                            </template>
                            <template #prev>
                                <i class="fa-solid fa-chevron-left text-white"></i>
                            </template>
                        </navigation>
                        <Pagination />
                    </template>
                </Carousel>
            </div>

            <!-- sliders -->
            <div class="">
                <div class="mt-5">
                    <Carousel v-bind="settingsRecommended" :breakpoints="breakpointsRecommended" ref="carouselSubBanner">
                        <Slide v-for="(banner, index) in bannersHome" :key="index">
                            <div class="carousel__item slider-sport-banner min-h-[150px] rounded-2xl w-full px-2">
                                <div class="w-full h-full bg-blue-800 rounded-2xl">
                                    <img :src="`/storage/`+banner.image" alt="" class="h-full w-full rounded-2xl">
                                </div>
                            </div>
                        </Slide>

                        <template #addons>
                            <Pagination />
                        </template>
                    </Carousel>
                </div>

                <div v-if="originals.length > 0" class="px-2 mb-5">
                    <!-- Lista de jogos originais -->
                    <div class="game-list flex flex-col mt-5 relative">
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
                </div>

                <div class="px-2">
                    <!-- lista de jogos por categorias -->
                    <ShowCarousel v-for="(category, index) in categories" :category="category" :index="index" />

                    <!-- lista de jogos salsa -->
                    <ShowCarouselSalsa v-for="(categorySalsa, index) in categoriesSalsa" :category="categorySalsa" :index="index" />

                    <!-- lista de jogos fivers -->
                    <ShowProvidersFivers v-for="(provider, index) in providersFivers" :provider="provider" :index="index" />
                </div>
            </div>
        </div>
    </BaseLayout>
</template>

<script>
import { Carousel, Pagination, Navigation, Slide } from 'vue3-carousel';
import {onMounted, reactive, ref} from "vue";

import BaseLayout from "@/Layouts/BaseLayout.vue";
import MakeDeposit from "@/Components/UI/MakeDeposit.vue";
import {RouterLink, useRoute, useRouter} from "vue-router";
import {useAuthStore} from "@/Stores/Auth.js";
import LanguageSelector from "@/Components/UI/LanguageSelector.vue";
import CassinoGameCard from "@/Pages/Cassino/Components/CassinoGameCard.vue";
import HttpApi from "@/Services/HttpApi.js";
import ShowCarousel from "@/Pages/Home/Components/ShowCarousel.vue";
import { loadLanguageAsync } from 'laravel-vue-i18n';
import ShowCarouselSalsa from "@/Pages/Home/Components/ShowCarouselSalsa.vue";
import ShowProvidersFivers from "@/Pages/Home/Components/ShowProvidersFivers.vue";
import LoadingComponent from "@/Components/UI/LoadingComponent.vue";

export default {
    props: [],
    components: {
        LoadingComponent,
        ShowProvidersFivers,
        ShowCarouselSalsa, ShowCarousel, CassinoGameCard, Carousel, Navigation, Pagination, Slide, LanguageSelector, MakeDeposit, BaseLayout, RouterLink },
    data() {
        return {
            isLoading: true,
            settings: {
                itemsToShow: 1,
                snapAlign: 'center',
                autoplay: 6000,
                wrapAround: true
            },
            breakpoints: {
                700: {
                    itemsToShow: 1,
                    snapAlign: 'center',
                },
                1024: {
                    itemsToShow: 1,
                    snapAlign: 'center',
                },
            },
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
            settingsRecommended: {
                itemsToShow: 1,
                snapAlign: 'start',
            },
            breakpointsRecommended: {
                700: {
                    itemsToShow: 1,
                    snapAlign: 'center',
                },
                1024: {
                    itemsToShow: 3,
                    snapAlign: 'start',
                },
            },
            originals: null,
            gamesSlotgrator: null,
            categories: null,
            categoriesSalsa: null,

            /// banners
            banners: null,
            bannersHome: null,

            providersFivers: null,
        }
    },
    setup() {
        const ckCarouselOriginals = ref(null)
        const carouselBanner = ref(null)

        return {
            ckCarouselOriginals,
            carouselBanner,
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
    },
    mounted() {

        this.getBanners();
    },
    methods: {
        initializeCarousel() {
            if (this.$refs.carouselBanner && this.banners.length > 0) {
                this.$nextTick(() => {

                    this.$refs.carouselBanner.initDefaultConfigs();
                    this.$refs.carouselBanner.updateBreakpointsConfigs();
                    this.$refs.carouselBanner.updateSlidesData();
                    this.$refs.carouselBanner.updateSlideWidth();

                });
            }
        },
        initializeBannerHomeCarousel() {
            if (this.$refs.carouselSubBanner && this.banners.length > 0) {
                this.$nextTick(() => {

                    this.$refs.carouselSubBanner.initDefaultConfigs();
                    this.$refs.carouselSubBanner.updateBreakpointsConfigs();
                    this.$refs.carouselSubBanner.updateSlidesData();
                    this.$refs.carouselSubBanner.updateSlideWidth();

                });
            }
        },
        getBanners: async function() {
            const _this = this;

            try {
                const response = await HttpApi.get('settings/banners');
                const allBanners = response.data.banners;

                _this.banners = allBanners.filter(banner => banner.type === 'carousel');
                _this.bannersHome = allBanners.filter(banner => banner.type === 'home');
            } catch (error) {
                console.error(error);
            } finally {

            }
        },
        getGamesSlotgrator: async function() {
            const _this = this;

            return await HttpApi.get('games/slotegrator')
                .then(async response =>  {
                    _this.categories = response.data.categories;
                })
                .catch(error => {
                    Object.entries(JSON.parse(error.request.responseText)).forEach(([key, value]) => {
                        console.log(`${value}`);
                    });
                });
        },
        getGamesSalsa: async function() {
            const _this = this;

            return await HttpApi.get('games/salsa')
                .then(async response =>  {
                    _this.categoriesSalsa = response.data.categoriesSalsa;
                })
                .catch(error => {
                    Object.entries(JSON.parse(error.request.responseText)).forEach(([key, value]) => {
                        console.log(`${value}`);
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
        getGamesFivers: async function() {
            const _this = this;

            return await HttpApi.get('games/fivers')
                .then(async response =>  {
                    _this.providersFivers = response.data.providers;
                })
                .catch(error => {
                    Object.entries(JSON.parse(error.request.responseText)).forEach(([key, value]) => { });
                });
        },
        getLoadingAllData: async function() {
            await this.getOriginalsGames();
            await this.getGamesSlotgrator();
            await this.getGamesSalsa();
            await this.getGamesFivers();

            this.isLoading = false;
        },
    },
    created() {
        this.getLoadingAllData();
    },
    watch: {
        banners: {
            handler() {
                this.initializeCarousel(); // Chame o método de inicialização quando os banners mudarem
                this.initializeBannerHomeCarousel();
            },
            immediate: true // Isso garantirá que o watcher seja acionado imediatamente após a montagem do componente
        }

    },
};
</script>
