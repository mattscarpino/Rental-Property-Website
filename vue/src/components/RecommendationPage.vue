
<template>
  <div>
    <header id="topOfPage">
      <img
        src="data:image/png;base64,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"
        alt=""
        id="hiltonheadlogo"
      />
      <router-link
        class="router"
        :to="{
          name: 'home',
        }"
        ><h1 id="homeButton">Home</h1></router-link
      >
      <router-link class="router" :to="{ name: 'recommendation' }"
        ><h1 id="activityButton">Recommendations</h1></router-link
      >
    </header>
    <body id="body">
      <div id="choices">
        <h1 class="options" @click="listAll">All</h1>
        <h1 class="options" @click="listRestaurants">Restaurants</h1>
        <h1 class="options" @click="listShops">Shopping</h1>
        <h1 class="options" @click="listGolf">Golf</h1>
        <h1 class="options" @click="listActivities">Activities</h1>
      </div>
      <div v-if="num == 0">
        <section
          class="location"
          v-for="all in recommendations"
          :key="all.recommendationId"
        >
          <img class="image" v-bind:src="all.picUrl" />

          <div class="grid">
            <h2 class="name">{{ all.name }}</h2>
            <p class="description">{{ all.description }}</p>
          </div>
        </section>
      </div>
      <div v-if="num == 1">
        <section
          class="location"
          v-for="restaurant in restaurants"
          :key="restaurant.recommendationId"
        >
          <img class="image" v-bind:src="restaurant.picUrl" />

          <div class="grid">
            <h2 class="name">{{ restaurant.name }}</h2>
            <p class="description">{{ restaurant.description }}</p>
          </div>
        </section>
      </div>
      <div v-if="num == 2">
        <section
          class="location"
          v-for="shop in shopping"
          :key="shop.recommendationId"
        >
          <img class="image" v-bind:src="shop.picUrl" />
          <div class="grid">
            <h2 class="name">{{ shop.name }}</h2>
            <p class="description">{{ shop.description }}</p>
          </div>
        </section>
      </div>
      <div v-if="num == 3">
        <section
          class="location"
          v-for="course in golf"
          :key="course.recommendationId"
        >
          <img class="image" v-bind:src="course.picUrl" />
          <div class="grid">
            <h2 class="name">{{ course.name }}</h2>
            <p class="description">{{ course.description }}</p>
          </div>
        </section>
      </div>
      <div v-if="num == 4">
        <section
          class="location"
          v-for="activity in activities"
          :key="activity.recommendationId"
        >
          <img class="image" v-bind:src="activity.picUrl" />
          <div class="grid">
            <h2 class="name">{{ activity.name }}</h2>
            <p class="description">{{ activity.description }}</p>
          </div>
        </section>
      </div>
    </body>
  </div>
</template>

<script>
import WebsiteService from "../services/website.js";

export default {
  data() {
    return {
      num: 0,
      recommendations: [],
      restaurants: [],
      shopping: [],
      golf: [],
      activities: [],
    };
  },
  created() {
    WebsiteService.getAllRecommendations().then((r) => {
      this.recommendations = r.data;
      this.splitRecommendations();
    });
  },
  methods: {
    listAll() {
      this.num = 0;
    },
    listRestaurants() {
      this.num = 1;
    },
    listShops() {
      this.num = 2;
    },
    listGolf() {
      this.num = 3;
    },
    listActivities() {
      this.num = 4;
    },
    splitRecommendations() {
      this.restaurants = this.recommendations.filter((v) => {
        if (v.type == "restaurant") {
          return v;
        }
      });
      this.shopping = this.recommendations.filter((v) => {
        if (v.type == "shopping") {
          return v;
        }
      });
      this.golf = this.recommendations.filter((v) => {
        if (v.type == "golf") {
          return v;
        }
      });
      this.activities = this.recommendations.filter((v) => {
        if (v.type == "activities") {
          return v;
        }
      });
    },
  },
};
</script>

<style scoped>
@media (min-width: 600px) {
  .title {
    text-align: center;
  }
  .location {
    display: flex;
    margin-top: 5%;
    background-color: #f4f4f4;
  }
  .image {
    width: 30vw;
  }
  .grid {
    width: 60vw;
    padding-left: 4%;
    padding-right: 4%;
  }
  .name {
    text-align: center;
    font-size: 3.5vw;
    border-bottom: 0.07em solid gray;
    margin: 1vh 3vw 0 3vw;
  }

  .description {
    text-align: center;
    font-size: 2vw;
  }
}
@media (max-width: 599px) {
  .title {
    text-align: center;
  }
  .location {
    display: block;
    margin-top: 5%;
    background-color: #f4f4f4;
  }
  .image {
    width: 75vw;
    margin: 2vh 10vw 2vh 10vw;
  }
  .name {
    text-align: center;
    font-size: 3.5vw;
    border-bottom: 0.07em solid gray;
    margin: 0 3vw 0 3vw;
  }
  .description {
    text-align: center;
    font-size: 3vw;
    padding: 0 5% 5% 5%;
  }
}

#choices {
  display: flex;
  justify-content: space-around;
  margin: 0% 10% 0% 10%;
  border-bottom: 0.07em solid black;
}

.options {
  font-size: 3vw;
}
.options:hover {
  text-decoration: underline;
}

#body {
  margin-top: 10%;
  margin-bottom: 5%;
}
/* header */
#hiltonheadlogo {
  display: inline-block;
  width: 15%;
  height: auto;
}
#homeButton {
  color: black;
  display: inline-block;
  margin-left: 20%;
  font-size: 2.5vw;
}
#homeButton:hover {
  text-decoration: underline;
}
#activityButton {
  color: black;
  display: inline-block;
  margin-left: 3%;
  font-size: 2.5vw;
}
#activityButton:hover {
  text-decoration: underline;
}
#topOfPage {
  z-index: 999;
  overflow: hidden;
  position: fixed;
  width: 100%;
  top: 0;
  border-bottom: 0.01em solid black;
  background-color: white;
}
</style>