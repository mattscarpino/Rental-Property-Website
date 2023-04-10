<template>
  <div>
    <h1 id="address">51 Surf Court</h1>
    <h4>Hilton Head Island, South Carolina</h4>
    <div id="pics">
      <img id="main-photo" src="../../assets/HHlivingroom.png" />
      <img
        id="living-room"
        class="other-photos"
        src="../../assets/HHlivingroomblinds.png"
      />

      <img
        id="master-bed"
        class="other-photos"
        src="../../assets/HHmasterbed.png"
      />
      <img
        id="guest-bed"
        class="other-photos"
        src="../../assets/HHguestbed.png"
      />
      <img
        id="chairs"
        class="other-photos"
        src="../../assets/HHmapchairs.png"
      />
    </div>
    <div>
      <section id="row">
        <section class="factoids">
          <img
            src="http://clipart-library.com/newimages/bed-clip-art-20.jpg"
            class="clipArt"
          />
          <h1 class="tips">Where You'll Sleep</h1>
          <p class="description">2 bedroom - 3 bed - 2.5 bath</p>
        </section>
        <section class="factoids">
          <img
            src="https://www.iconpacks.net/icons/2/free-location-pin-icon-3090-thumb.png"
            class="clipArt"
          />
          <h1 class="tips">Great Location</h1>
          <p class="description">
            Walking distance to beach and Coligny Circle
          </p>
        </section>

        <section class="factoids">
          <img
            src="https://static.vecteezy.com/system/resources/previews/010/788/318/original/double-wrench-icon-with-hammer-icon-related-to-construction-labor-day-line-icon-style-simple-design-editable-vector.jpg"
            class="clipArt"
          />
          <h1 class="tips">Recently Rennovated</h1>
          <p class="description">Counters / Floors / Furniture / Appliances</p>
        </section>
      </section>
      <section class="pricing">
        <button @click="springPrices()" class="btn">Spring</button>
        <button @click="summerPrices()" class="btn">Summer</button>
        <button @click="fallPrices()" class="btn">Fall</button>
        <button @click="winterPrices()" class="btn">Winter</button>

        <p class="season">
          <em>{{ price.season }}</em>
        </p>
        <p v-if="num == 1" class="dates"><em>December 1 - February 28</em></p>
        <p v-if="num == 2" class="dates"><em>March 1 - May 31</em></p>
        <p v-if="num == 3" class="dates"><em>June 1 - August 31</em></p>
        <p v-if="num == 4" class="dates"><em>September 1 - November 30</em></p>

        <p class="cost">
          <b>${{ price.daily }}</b
          ><em> / night</em>
        </p>

        <p class="cost">
          <b>${{ price.weekly }}</b
          ><em> / week</em>
        </p>
        <p class="cost">
          <b>${{ price.twoweeks }}</b
          ><em> / month</em>
        </p>

        <p class="cost"><em>+ Cleaning Fee: </em><b> $150</b></p>
      </section>
    </div>
    <div class="bottom">
      <section id="yaa">
        <h1 class="descrp">Description</h1>
        <p class="other-desc-not-indented">
          A two bedroom town house that has been recently rennovated. Has 3 beds
          and 2.5 baths along with a full kitchen, washer, and dryer. Overlooks
          the pool and is in walking distance to the beach and Coligny Circle.
        </p>
      </section>
      <section id="bruh">
        <h1>Ammenenies offered</h1>
      </section>
    </div>
  </div>
</template>

<script>
import WebsiteService from "../services/website.js";

export default {
  data() {
    return {
      prices: [],
      pictures: [],
      price: {
        daily: "",
        priceID: "",
        season: "",
        weekly: "",
        twoweeks: "",
      },
      num: "",
    };
  },

  created() {
    WebsiteService.getAllPrices().then((r) => {
      this.prices = r.data;
      this.displaySeason();
    });
    WebsiteService.getAllPics().then((r) => {
      this.pictures = r.data;
    });
  },
  methods: {
    winterPrices() {
      this.num = 1;
      this.prices.forEach((p) => {
        if (p.season == "winter") {
          this.price = p;
        }
      });
    },
    springPrices() {
      this.num = 2;
      this.prices.forEach((p) => {
        if (p.season == "spring") {
          this.price = p;
        }
      });
    },
    summerPrices() {
      this.num = 3;
      this.prices.forEach((p) => {
        if (p.season == "summer") {
          this.price = p;
        }
      });
    },
    fallPrices() {
      this.num = 4;
      this.prices.forEach((p) => {
        if (p.season == "fall") {
          this.price = p;
        }
      });
    },

    displaySeason() {
      const date = new Date();
      let month = date.getMonth() + 1;

      if (month <= 2 || month == 12) {
        this.prices.forEach((p) => {
          if (p.season == "winter") {
            this.price = p;
          }
        });
        this.num = 1;
      } else if (month <= 5) {
        this.prices.forEach((p) => {
          if (p.season == "spring") {
            this.price = p;
          }
        });
        this.num = 2;
      } else if (month <= 8) {
        this.prices.forEach((p) => {
          if (p.season == "summer") {
            this.price = p;
          }
        });
        this.num = 3;
      } else {
        this.prices.forEach((p) => {
          if (p.season == "fall") {
            this.price = p;
          }
        });
        this.num = 4;
      }
    },
  },
};
</script>

<style scoped>
#yaa {
  display: inline-block;
  justify-content: left;
  width: 45%;
}
#bruh {
  display: inline-block;
  justify-content: right;
  margin-left: 20%;
  width: 35%;
}

#other-desc-not-indented {
  font-size: 1.7vw;
  text-align: center;
}

.descrp {
  font-size: 2.7vw;
  text-align: center;
}

.description {
  font-size: 1.7vw;
  text-align: left;
  padding-left: 15%;
  padding-top: 0%;
}

.tips {
  display: inline-block;
  font-size: 2.7vw;
  text-align: left;
  padding-left: 2%;
  padding-bottom: 0%;
}

.clipArt {
  display: inline-block;
  width: 10%;
}

#row {
  display: inline-block;
  margin: 5%;
  padding: 2%;
  width: 40%;
}
.factoids {
  border-bottom: 0.1em solid #5e5df0;
}

.pricing {
  display: inline-block;
  justify-content: right;
  margin-left: 5%;
  width: 35%;
  height: 10%;
  padding: 2%;
  box-sizing: border-box;
  border-radius: 5%;

  box-shadow: rgba(0, 0, 0, 0.16) 0px 3px 6px 0px,
    rgba(0, 0, 0, 0.23) 0px 3px 6px 0px;
}
.cost {
  font-size: 2.7vw;
}
.dates {
  font-size: 2vw;
  text-align: center;
  padding: 0%;
  margin: 0%;
}
.season {
  font-size: 4vw;
  text-align: center;
  margin-bottom: 2%;
  margin-top: 5%;
}

/* CSS */
.btn {
  flex-wrap: wrap;
  background: #5e5df0;
  border-radius: 999px;
  box-shadow: #5e5df0 0 10px 20px -10px;
  box-sizing: border-box;
  color: #ffffff;
  cursor: pointer;
  font-family: Inter, Helvetica, "Apple Color Emoji", "Segoe UI Emoji",
    NotoColorEmoji, "Noto Color Emoji", "Segoe UI Symbol", "Android Emoji",
    EmojiSymbols, -apple-system, system-ui, "Segoe UI", Roboto, "Helvetica Neue",
    "Noto Sans", sans-serif;
  font-size: 1.7vw;
  font-weight: 700;
  line-height: 5vh;
  opacity: 1;
  outline: 0 solid transparent;
  padding: 0.3vh 4%;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  width: fit-content;
  word-break: break-word;
  border: 0;
}

#main-photo {
  grid-area: main;
  width: 100%;
  height: auto;
  border-top-left-radius: 5%;
  border-bottom-left-radius: 5%;
}

.other-photos {
  grid-area: other;
  width: 97%;
  height: auto;
  max-width: 282px;
}
#living-room {
  grid-area: living;
}
#chairs {
  grid-area: chairs;

  border-bottom-right-radius: 5%;
}
#guest-bed {
  grid-area: guest;

  border-top-right-radius: 5%;
}
#master-bed {
  grid-area: bed;
}

#pics {
  display: grid;
  grid-template-columns: 4;
  grid-template-rows: 3;
  grid-template-areas:
    "main main living guest"
    "main main bed chairs";
  gap: 1%;
  justify-content: center;
}
</style>

