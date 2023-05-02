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
      <div class="season" v-for="prices in allpricing" :key="prices.id">
        <h1 class="name">
          <em>{{ prices.season }}</em>
        </h1>
        <div class="all">
          <section class="group">
            <h2 class="length">Daily</h2>
            <p class="price">$ {{ prices.daily }}</p>
          </section>

          <section class="group">
            <h2 class="length">Weekly</h2>
            <p class="price">$ {{ prices.weekly }}</p>
          </section>

          <section class="group">
            <h2 class="length">Two&nbsp;Weeks</h2>
            <p class="price" v-if="prices.twoWeeks != 0">
              $ {{ prices.twoWeeks }}
            </p>
            <p class="price" v-else>N/A</p>
          </section>

          <section class="group">
            <h2 class="length">Three&nbsp;Weeks</h2>
            <p class="price" v-if="prices.threeWeeks != 0">
              $ {{ prices.threeWeeks }}
            </p>
            <p class="price" v-else>N/A</p>
          </section>

          <section class="group">
            <h2 class="length">Four&nbsp;Weeks</h2>
            <p class="price" v-if="prices.fourWeeks != 0">
              $ {{ prices.fourWeeks }}
            </p>
            <p class="price" v-else>N/A</p>
          </section>
        </div>
      </div>
    </body>
  </div>
</template>

<script>
import WebsiteService from "../services/website.js";

export default {
  data() {
    return {
      allpricing: [],
    };
  },
  created() {
    WebsiteService.getAllPrices().then((r) => {
      this.allpricing = r.data;
    });
  },
};
</script>

<style scoped>
#body {
  margin-top: 10%;
}

@media (max-width: 679px) {
  .price {
    display: flex;
    justify-content: center;
  }
  .length {
    display: flex;
    justify-content: center;
  }
  .name {
    text-align: center;
    text-transform: capitalize;
    padding-top: 2%;
    border-bottom: 0.05em solid black;
  }
  .group {
    display: block;
    margin: 2vw;
    margin-top: 0%;
  }
  .season {
    margin: auto;
    background-color: #fbeec9;
    margin-bottom: 15%;
    padding-bottom: 3%;
    /* padding-top: 1%; */
    /* border: 0.1em solid black; */
    width: 70%;
    box-shadow: rgba(0, 0, 0, 0.56) 0px 22px 70px 4px;
    /* border-radius: 5%; */
  }
}

@media (min-width: 680px) {
  .price {
    text-align: center;
  }
  .all {
    display: flex;
    justify-content: center;
    align-self: center;
  }
  .name {
    text-align: center;
    text-transform: capitalize;
    padding-top: 2%;
    /* border-bottom: 0.05em solid black; */
  }
  .group {
    display: inline-block;
    margin: 2vw;
    margin-top: 0%;
  }
  .season {
    margin: auto;
    background-color: #fbeec9;
    margin-bottom: 10%;
    /* border: 0.1em solid black; */
    width: fit-content;
    box-shadow: rgba(0, 0, 0, 0.56) 0px 22px 70px 4px;
    /* border-radius: 5%; */
  }
}
/* Header */
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
