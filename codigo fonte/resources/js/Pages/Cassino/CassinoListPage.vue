<template>
    <BaseLayout>
        <LoadingComponent :isLoading="isLoading">
            <div class="text-center">
                <span>Carregando os jogos</span>
            </div>
        </LoadingComponent>

        <div v-if="!isLoading" class="my-auto">
            <div class="px-4 py-5">
                <form class="mb-5">
                    <label for="search" class="mb-2 text-sm font-medium text-gray-900 sr-only dark:text-white">
                        {{ $t('Search') }}
                    </label>
                    <div class="relative">
                        <div class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none">
                            <svg class="w-4 h-4 text-gray-500 dark:text-gray-400" aria-hidden="true"
                                 xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20">
                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                      stroke-width="2" d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z"/>
                            </svg>
                        </div>
                        <input v-model="searchTerm" @input="searchGames" type="search" id="search"
                               class="block w-full p-4 pl-10 text-sm text-gray-900 border border-gray-300 rounded-lg bg-gray-50 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700/20 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                               placeholder="Search" required>
                    </div>
                </form>

                <div v-if="gamesFivers.total === 0 && gamesSlotegrators.total === 0 && gamesOriginals.total === 0 && gamesSalsa.total === 0"
                     class="min-h-[calc(100vh-565px)] text-center flex flex-col items-center justify-center">
                    <div class="mb-3 py-6">
                        <img :src="`/assets/images/empty_search.png`" alt="" class="w-full">
                    </div>
                    <h1 class="text-2xl font-bold">{{ $t('Search requires at least 3 characters') }}</h1>
                </div>

                <div v-else class="flex flex-col">
                    <div v-if="provider === 'fivers' || provider === 'category'" class="flex flex-col h-full">
                        <div v-if="gamesFivers">
                            <div class="mb-3">
                                <div class="grid grid-cols-2 md:grid-cols-6 gap-4 mb-5">
                                    <CassinoGameCard
                                        v-for="(game, index) in gamesFivers.data"
                                        :index="index"
                                        :title="game.game_name"
                                        :cover="`/storage/`+game.banner"
                                        :link="game.game_code"
                                        type="fivers"
                                    />
                                </div>
                            </div>

                            <CustomPagination :data="gamesFivers" @pagination-change-page="getFiversData"/>
                        </div>
                    </div>
                    <div v-if="provider === 'slotegrator' || provider === 'category'">
                        <div v-if="gamesSlotegrators">
                            <div class="grid grid-cols-2 md:grid-cols-6 gap-4 mb-5">
                                <CassinoGameCard
                                    v-for="(game, index) in gamesSlotegrators.data"
                                    :index="index"
                                    :title="game.name"
                                    :cover="`/storage/`+game.image"
                                    :link="game.slug"
                                    type="slotegrator"
                                />
                            </div>

                            <CustomPagination :data="gamesSlotegrators" @pagination-change-page="getSlotegratorData"/>
                        </div>
                    </div>
                    <div v-if="provider === 'originals'" class="flex flex-col">
                        <div v-if="gamesOriginals">
                            <div>
                                <div class="grid grid-cols-2 md:grid-cols-6 gap-4 mb-5">
                                    <CassinoGameCard
                                        v-for="(game, index) in gamesOriginals.data"
                                        :index="index"
                                        :title="game.name"
                                        :cover="`/storage/`+game.cover"
                                        :link="game.uuid"
                                        type="originals"
                                    />
                                </div>
                            </div>

                            <CustomPagination :data="gamesOriginals" @pagination-change-page="getOriginalsData"/>
                        </div>
                    </div>
                    <div v-if="provider === 'salsa'" class="flex flex-col">
                        <div v-if="gamesSalsa">
                            <div>
                                <div class="grid grid-cols-2 md:grid-cols-6 gap-4 mb-5">
                                    <CassinoGameCard
                                        v-for="(game, index) in gamesSalsa.data"
                                        :index="index"
                                        :title="game.name"
                                        :cover="`/storage/`+game.image"
                                        :link="game.slug"
                                        type="salsa"
                                    />
                                </div>
                            </div>

                            <CustomPagination :data="gamesSalsa" @pagination-change-page="getSalsaData"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </BaseLayout>
</template>


<script>

import BaseLayout from "@/Layouts/BaseLayout.vue";
import HttpApi from "@/Services/HttpApi.js";
import CassinoGameCard from "@/Pages/Cassino/Components/CassinoGameCard.vue";
import CustomPagination from "@/Components/UI/CustomPagination.vue";
import {useRoute, useRouter} from "vue-router";
import {computed, ref, watch} from "vue";
import LoadingComponent from "@/Components/UI/LoadingComponent.vue";

export default {
    props: [],
    components: {LoadingComponent, CustomPagination, CassinoGameCard, BaseLayout},
    data() {
        return {
            isLoading: false,
            searchTerm: '',
            games: [],
            gamesOriginals: null,
            gamesFivers: null,
            gamesSlotegrators: null,
            gamesSalsa: null,
            provider: null,
            category: null,
        }
    },
    setup(props) {
        const route = useRoute();

        watch(() => route.params.provider, (newProvider, oldProvider) => {

        });

        return {
            route
        };
    },
    computed: {},
    mounted() {},
    beforeUnmount() {},
    methods: {
        searchGames: async function () {
            const _this = this;
            if (_this.searchTerm.length > 2) {
                const provider  = _this.route.params.provider;
                const game      = _this.route.params.game;

                if(provider === 'originals') {
                    _this.getOriginalsData(1, game, false);
                }

                if(provider === 'fivers') {
                    _this.getFiversData(1, game, false);
                }

                if(provider === 'slotegrator') {
                    _this.getSlotegratorData(1, game, false);
                }

                if(provider === 'salsa') {
                    _this.getSalsaData(1, game, false);
                }
            }
        },
        getOriginalsData: async function (page = 1, game = null, loading = true) {
            const _this = this;
            _this.isLoading = loading;

            await HttpApi.get('/casinosoriginals?page=' + page + '&searchTerm=' + _this.searchTerm+'&category='+(game ?? _this.category))
                .then(response => {
                    _this.gamesOriginals = response.data.games;
                    _this.isLoading = false;
                })
                .catch(error => {
                    console.log(error);
                    _this.isLoading = false;
                });
        },
        getSlotegratorData: async function (page = 1, game = null, loading = true) {
            const _this = this;
            _this.isLoading = loading;

            await HttpApi.get('/casinosslotegrator?page=' + page + '&searchTerm=' + _this.searchTerm+'&category='+(game ?? _this.category))
                .then(response => {
                    _this.gamesSlotegrators = response.data.games;
                    _this.isLoading = false;
                })
                .catch(error => {
                    console.log(error);
                    _this.isLoading = false;
                });
        },
        getFiversData: async function (page = 1, game = null, loading = true) {
            const _this = this;
            _this.isLoading = loading;

            await HttpApi.get('/casinosfivers?page=' + page + '&searchTerm=' + _this.searchTerm+'&provider='+(game ?? _this.category))
                .then(response => {
                    _this.gamesFivers = response.data.games;
                    _this.isLoading = false;
                })
                .catch(error => {
                    console.log(error);
                    _this.isLoading = false;
                });
        },
        getSalsaData: async function (page = 1, game = null, loading = true) {
            const _this = this;
            _this.isLoading = loading;

            await HttpApi.get('/casinossalsa?page=' + page + '&searchTerm=' + _this.searchTerm+'&category='+(game ?? _this.category))
                .then(response => {
                    _this.gamesSalsa = response.data.games;
                    _this.isLoading = false;
                })
                .catch(error => {
                    console.log(error);
                    _this.isLoading = false;
                });
        },
        getAllGamesByCategory: async function (page = 1, category = null, loading = true) {
            const _this = this;
            _this.isLoading = loading;

            await HttpApi.get('/casinoall?page=' + page + '&searchTerm=' + _this.searchTerm+'&category='+(category ?? _this.category))
                .then(response => {
                    _this.gamesFivers = response.data.gamesFivers;
                    _this.gamesOriginals = response.data.gamesOriginals;
                    _this.gamesSlotegrators = response.data.gamesSlotegrators;
                    _this.gamesSalsa = response.data.gamesSalsa;

                    _this.isLoading = false;
                })
                .catch(error => {
                    console.log(error);
                    _this.isLoading = false;
                });
        },
    },
    created() {
        const route = useRoute()
        const provider = route.params.provider;
        const game = route.params.game;

        this.provider = provider;
        this.category = game;

        if(provider === 'category') {
            this.getAllGamesByCategory(1, game, true);
        }else{
            if(provider === 'originals') {
                this.getOriginalsData(1, game, true);
            }

            if(provider === 'fivers') {
                this.getFiversData(1, game, true);
            }

            if(provider === 'slotegrator') {
                this.getSlotegratorData(1, game, true);
            }

            if(provider === 'salsa') {
                this.getSalsaData(1, game, true);
            }
        }
    },
    watch: {
        'route.params.game'(newGame, oldGame) {
            console.log("Alterou");
            if(this.provider === 'category') {
                this.getAllGamesByCategory(1, newGame);
            }else{
                if(this.provider === 'originals') {
                    this.getOriginalsData(1, newGame);
                }

                if(this.provider === 'fivers') {
                    this.getFiversData(1, newGame);
                }

                if(this.provider === 'slotegrator') {
                    this.getSlotegratorData(1, newGame);
                }

                if(this.provider === 'salsa') {
                    this.getSalsaData(1, newGame);
                }
            }
        }
    },
};
</script>

<style scoped>

</style>
