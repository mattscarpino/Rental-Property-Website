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
    <h1 id="address">Property</h1>
    <h4 id="location">Hilton Head Island, SC</h4>
    <div id="gallery">
      <img id="main-photo" src="../../assets/HHlivingroom.png" />

      <div id="square">
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
    </div>
    <router-link
      class="more-photos"
      :to="{
        name: 'photos',
      }"
      ><button id="more-photos">Show All Photos</button></router-link
    >
    <div id="topRow">
      <div id="TopInformation">
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
      </div>
      <section class="pricing" id="allprices">
        <button @click="springPrices()" class="btn">Spring</button>
        <button @click="summerPrices()" class="btn">Summer</button>
        <button @click="fallPrices()" class="btn">Fall</button>
        <button @click="winterPrices()" class="btn">Winter</button>

        <p class="season">
          <em>{{ price.season }}</em>
        </p>
        <p v-if="num == 1" class="dates"><em>December 1 - February 28</em></p>
        <p v-if="num == 2" class="dates"><em>March 1 - Memorial Day</em></p>
        <p v-if="num == 3" class="dates"><em>Memorial Day - Labor Day</em></p>
        <p v-if="num == 4" class="dates"><em>Labor Day - November 30</em></p>

        <p class="cost">
          <b>${{ price.daily }}</b
          ><em> / night</em>
        </p>

        <p class="cost">
          <b>${{ price.weekly }}</b
          ><em> / week</em>
        </p>

        <p class="cost"><em>+ Cleaning Fee: </em><b> $160</b></p>
        <p class="cost">
          <em>Final Cost: </em><b> ${{ totalCost }}</b>
        </p>
        <router-link
          class="router"
          id="more"
          :to="{
            name: 'prices',
          }"
          ><button id="more-photos">More pricing</button></router-link
        >
      </section>
    </div>
    <div id="bottomRow">
      <section class="pricing" id="secondBox">
        <h1 class="descrp">About This Property</h1>
        <p class="other-desc-not-indented" v-if="shrink">
          Hilton Head Island villa in South Forest Beach with kitchen and patio
          is a 2 bedroom, 2 1/2 bathroom two-story condo with a ground-level
          entry located in South Forest Beach. This condo is an end unit with an
          assigned parking space right outside the door, as well as several
          guest spots right around the corner of the condo. The main floor was
          completely remodeled in 2016 with the addition of ceramic tile floors,
          stainless steel appliances, as well as new cabinets and granite
          countertops in both the kitchen and the half bath. Ceiling fans were
          added to the living room and both bedrooms. The entire condo was
          painted and new carpeting was added on the stairs and in the upstairs
          bedrooms and hall (the primary bedroom and both upstairs bathrooms
          have been repainted since 2019). A new HVAC system was installed in
          April 2018. A new washer and dryer were added in June of 2021. The two
          bedrooms on the second floor each have a private bathroom...
        </p>
        <p class="see-more" @click="collapseDescription" v-if="shrink">
          See more
        </p>
        <p v-if="!shrink" class="other-desc-not-indented">
          Hilton Head Island villa in South Forest Beach with kitchen and patio
          is a 2 bedroom, 2 1/2 bathroom two-story condo with a ground-level
          entry located in South Forest Beach. This condo is an end unit with an
          assigned parking space right outside the door, as well as several
          guest spots right around the corner of the condo. The main floor was
          completely remodeled in 2016 with the addition of ceramic tile floors,
          stainless steel appliances, as well as new cabinets and granite
          countertops in both the kitchen and the half bath. Ceiling fans were
          added to the living room and both bedrooms. The entire condo was
          painted and new carpeting was added on the stairs and in the upstairs
          bedrooms and hall (the primary bedroom and both upstairs bathrooms
          have been repainted since 2019). A new HVAC system was installed in
          April 2018. A new washer and dryer were added in June of 2021. The two
          bedrooms on the second floor each have a private bathroom, as well as
          closets, an armoire, and a television. One bedroom has a king-size
          bed, while the other has a queen and a twin. There is also a sofa bed
          in the living room. In addition to the bedroom televisions, there is a
          large flat panel television in the living room with three HDMI ports
          for you to hook up a gaming system. The condo has cable television and
          a DVD player, as well as secure wireless internet. Outside the front
          door is a gated area to keep your bicycles and beach chairs. Beach
          access is right across the street from the front of the complex and
          there are many paved bike paths nearby. Also, the Van Der Meer tennis
          center is down the street from the condo. Outside the sliding glass
          door in the living room is a patio with a table, chairs, and umbrella,
          as well as access to the courtyard and the wonderful pool. Surf Court
          is close to restaurants and grocery stores, and also is within walking
          or biking distance of Coligny Plaza, which has restaurants and a
          variety of interesting shops. Air-conditioned accommodations at this
          villa offer DVD players and coffee/tea makers. Rooms open to patios.
          Kitchens offer refrigerators, stovetops, microwaves, and
          cookware/dishes/utensils. Bathrooms include shower/tub combinations
          and hair dryers. The recreational activities listed below are
          available either on site or nearby; fees may apply.
        </p>
        <p class="see-more" @click="collapseDescription" v-if="!shrink">
          See less
        </p>
      </section>
      <section id="amenities">
        <h1 class="descrp">What we offer</h1>
        <div id="grid">
          <div
            id="offerings"
            v-for="offering in offerings"
            :key="offering.amenity"
          >
            <img class="icon" v-bind:src="offering.url" />
            <p class="amenity">{{ offering.amenity }}</p>
          </div>
        </div>
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
      offerings: [],
      price: {
        daily: "",
        priceID: "",
        season: "",
        weekly: "",
        twoWeeks: "",
        threeWeeks: "",
        fourWeeks: "",
      },
      num: "",
      shrink: true,
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
    WebsiteService.getAllOfferings().then((r) => {
      this.offerings = r.data;
    });
  },
  computed: {
    totalCost() {
      return this.price.weekly + 160;
    },
  },
  methods: {
    collapseDescription() {
      this.shrink = !this.shrink;
    },

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
#more {
  display: flex;
  justify-content: center;
}
#grid {
  display: grid;
  grid-template-columns: 1fr 1fr;
  grid-gap: 10px;
  justify-items: center;
  align-items: center;
  padding-left: 10%;
}

#more-photos,
.more-photos {
  display: flex;
  justify-content: right;
  text-decoration: none;
  margin-right: 5%;
}

/* CSS */
#more-photos {
  align-items: center;
  background-image: linear-gradient(135deg, #f34079 40%, #fc894d);
  border: 0;
  border-radius: 10px;
  box-sizing: border-box;
  color: #fff;
  cursor: pointer;
  display: flex;
  flex-direction: column;
  font-family: "Codec cold", sans-serif;
  font-size: 16px;
  font-weight: 700;
  height: 30px;
  justify-content: center;
  letter-spacing: 0.4px;
  line-height: 1;
  max-width: 100%;
  padding-left: 20px;
  padding-right: 20px;
  padding-top: 3px;
  text-decoration: none;
  text-transform: uppercase;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
}

#more-photos:active {
  outline: 0;
}

#more-photos:hover {
  outline: 0;
}

#more-photos span {
  transition: all 200ms;
}

#more-photos:hover span {
  transform: scale(0.9);
  opacity: 0.75;
}

.router {
  text-decoration: none;
}
#offerings {
  margin-bottom: 2%;
}

.amenity {
  padding-left: 5%;
  text-align: center;
}
.see-more {
  text-align: left;
  font-size: 1.7vw;
  color: blue;
}
.see-more:hover {
  text-decoration: underline;
}

.other-desc-not-indented {
  text-align: center;
}

.factoids {
  border-bottom: 0.1em solid black;
  margin-bottom: 3%;
}

.pricing {
  display: inline-block;
  width: 35%;
  background-color: #f4f4f4;
  padding: 2%;
  margin-top: 5%;
  align-content: center;
  box-sizing: border-box;
  border-radius: 5%;
  box-shadow: rgba(0, 0, 0, 0.16) 0px 3px 6px 0px,
    rgba(0, 0, 0, 0.23) 0px 3px 6px 0px;
}

#offerings {
  list-style-type: none;
  display: flex;
  flex-wrap: wrap;
}

@media (max-width: 500px) {
  .icon {
    width: 30%;
  }
  #more-photos {
    font-size: 2vw;
    padding: 2vw 2vh 2vw 2vh;
    height: 15px;
  }
  #TopInformation {
    display: block;
    margin: auto;
    padding-left: 12%;
    padding-right: 12%;
    padding-top: 8%;
  }

  #topRow {
    display: flex;
    flex-direction: column-reverse;
  }
  .clipArt {
    display: inline-block;
    width: 10%;
    margin-left: 0%;
  }
  .tips {
    display: inline-block;
    font-size: 4vw;
    text-align: center;
    padding-left: 2%;
    padding-bottom: 0%;
  }
  .description {
    font-size: 3vw;
    text-align: left;
    padding-left: 15%;
    padding-top: 0%;
    margin-top: 0%;
  }
  #allprices {
    display: block;
    margin: auto;
    width: 50%;
    margin-top: 8%;
  }

  .btn {
    flex-wrap: wrap;
    background: #659dbd;
    border-radius: 999px;
    box-shadow: #659dbd 0 10px 20px -10px;
    box-sizing: border-box;
    color: #ffffff;
    cursor: pointer;
    font-family: Inter, Helvetica, "Apple Color Emoji", "Segoe UI Emoji",
      NotoColorEmoji, "Noto Color Emoji", "Segoe UI Symbol", "Android Emoji",
      EmojiSymbols, -apple-system, system-ui, "Segoe UI", Roboto,
      "Helvetica Neue", "Noto Sans", sans-serif;
    font-size: 2.3vw;
    font-weight: 700;
    line-height: 200%;
    opacity: 1;
    outline: 0 solid transparent;
    padding: 0.6% 4%;
    user-select: none;
    -webkit-user-select: none;
    touch-action: manipulation;
    width: fit-content;
    word-break: break-word;
    border: 0;
    margin-left: 1%;
  }
  .cost {
    font-size: 3.3vw;
    margin-left: 5%;
  }
  .dates {
    font-size: 2.6vw;
    text-align: center;
    padding: 0%;
    margin: 0%;
  }
  .season {
    text-transform: capitalize;
    font-size: 4.6vw;
    text-align: center;
    margin-bottom: 2%;
    margin-top: 5%;
  }
}

@media (min-width: 501px) {
  .icon {
    width: 20%;
  }
  #allprices {
    margin-left: 3%;
  }
  #secondBox {
    margin-left: 5%;
    width: 45%;
  }
  #TopInformation {
    display: inline-block;
    margin-top: 5%;
    padding: 2%;
    width: 40%;
    margin-left: 8%;
    align-content: center;
    vertical-align: top;
  }
  .description {
    font-size: 1.7vw;
    text-align: left;
    padding-left: 15%;
    padding-top: 0%;
    margin-top: 0%;
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
  .btn {
    flex-wrap: wrap;
    background: #659dbd;
    border-radius: 999px;
    box-shadow: #659dbd 0 10px 20px -10px;
    box-sizing: border-box;
    color: #ffffff;
    cursor: pointer;
    font-family: Inter, Helvetica, "Apple Color Emoji", "Segoe UI Emoji",
      NotoColorEmoji, "Noto Color Emoji", "Segoe UI Symbol", "Android Emoji",
      EmojiSymbols, -apple-system, system-ui, "Segoe UI", Roboto,
      "Helvetica Neue", "Noto Sans", sans-serif;
    font-size: 1.7vw;
    font-weight: 700;
    line-height: 200%;
    opacity: 1;
    outline: 0 solid transparent;
    padding: 0.6% 4%;
    user-select: none;
    -webkit-user-select: none;
    touch-action: manipulation;
    width: fit-content;
    word-break: break-word;
    border: 0;
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
    text-transform: capitalize;
    font-size: 4vw;
    text-align: center;
    margin-bottom: 2%;
    margin-top: 5%;
  }
}

/* CSS */
@media (max-width: 820px) {
  .more-photos {
    margin-top: -8%;
    margin-right: 0%;
    padding-right: 0%;
  }
  .descrp {
    font-size: 3.5vw;
    text-align: center;
  }
  .other-desc-not-indented {
    font-size: 2.3vw;
  }
  .other-photos {
    display: none;
  }
  div#square {
    display: none;
  }

  #gallery {
    display: flex;
  }
  #main-photo {
    width: 100%;
    height: auto;
  }
  #address {
    display: inline-block;
    margin-top: 10%;
    font-size: 4vw;
    padding-left: 5%;
  }
  #location {
    display: inline-block;
    font-size: 2vw;
    text-decoration: underline;
    padding-left: 3%;
  }
  #amenities {
    display: block;
    position: relative;
    text-align: center;
    margin: 5% auto 0% auto;
    width: 70%;
  }
  #secondBox {
    display: block;
    margin: auto;
    margin-top: 10%;
    width: 80%;
  }
}

@media (min-width: 821px) {
  #more-photos {
    margin-top: -4%;
    margin-right: 7%;
  }
  .other-desc-not-indented {
    font-size: 1.7vw;
  }
  .descrp {
    font-size: 2.7vw;
    text-align: center;
  }
  #gallery {
    display: flex;
    flex-wrap: wrap;
    margin-left: 10%;
    margin-right: 10%;
    /* position: relative; */
  }
  #main-photo {
    flex: 1 1 40%; /* Set flex properties to make it take up 100% of the container width */
    height: auto;
    border-bottom-left-radius: 3%;
    border-top-left-radius: 3%;
    margin-right: 10px;
  }

  #square {
    flex: 1 1 40%; /* Set flex properties to make it take up 50% of the container width */
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    grid-gap: 10px;
  }
  #square img {
    width: 100%;
    height: auto;
  }

  #chairs {
    border-bottom-right-radius: 5%;
  }

  #master-bed {
    border-top-right-radius: 5%;
  }
  #address {
    display: inline-block;
    margin-top: 10%;
    font-size: 3vw;
    padding-left: 14%;
  }
  #location {
    display: inline-block;
    font-size: 1.5vw;
    text-decoration: underline;
    padding-left: 3%;
  }
  #amenities {
    display: inline-block;
    position: absolute;
    margin: auto;
    margin-top: 5%;
    margin-left: 5%;
    text-align: center;
    width: 35%;
  }
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

