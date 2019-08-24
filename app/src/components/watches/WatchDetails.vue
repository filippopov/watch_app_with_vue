<template>
  <div>
    <div class="title">
      <h2>Watch Information</h2>
    </div>
    <div class="watch-functions">
      <router-link title="Back to home" :to="{name: 'watchCollection'}"><i  class="fa fa-backward"></i></router-link>
      <router-link title="Edit Watch" :to="{name: 'watchEdit', params: {id: this.$route.params.id}}"><i class="fa fa-edit"></i></router-link>
      <a style="cursor: pointer" @click="deleteWatch" id="delete-button"><i data-toggle="modal" data-target="#exampleModal" title="Delete Watch" class="fa fa-trash"></i></a>
    </div>
    <div class="watch-container">
      <div v-if="watchPictures" class="cards-layout masonry">
        <span v-for="(watchPicture, index) in watchPictures" :key="index" class="card">
          <span class="card-inner">
              <span class="card-media">
                  <img :src="`http://localhost${watchPicture.path}`">
              </span>
          </span>
        </span>
      </div>
    </div>
    <table>
      <thead>
      <tr>
        <th>Brand</th>
        <th>Model</th>
        <th>Reference number</th>
        <th>Gender</th>
        <th>Movement</th>
        <th>Case Material</th>
        <th>Bracelet Material</th>
        <th>Case diameter (mm)</th>
        <th>Bracelet Color</th>
        <th>Clasp Material</th>
        <th>Clasp</th>
        <th>Bezel Material</th>
        <th>Thickness (mm)</th>
        <th>Glass</th>
        <th>Water Resistance</th>
        <th>Dial</th>
        <th>Dial Numerals</th>
        <th>Movement / Caliber</th>
        <th>Base caliber</th>
        <th>Power reserve (h)</th>
        <th>Number of jewels</th>
        <th>Frequency (A/h)</th>
        <th>Functions</th>
        <th>Others</th>
      </tr>
      </thead>
      <tbody>
      <tr v-for="(watchInfo, index) in getWatchData" :key="index">
        <td data-label="Brand">{{watchInfo.brand_name}}</td>
        <td data-label="Model">{{watchInfo.model}}</td>
        <td data-label="Reference number">{{watchInfo.reference_number}}</td>
        <td data-label="Gender">{{watchInfo.gender_name}}</td>
        <td data-label="Movement">{{watchInfo.movement_name}}</td>
        <td data-label="Case Material">{{watchInfo.case_material_name}}</td>
        <td data-label="Bracelet Material">{{watchInfo.bracelet_material_name}}</td>
        <td data-label="Case diameter (mm)">{{watchInfo.case_diameter}}</td>
        <td data-label="Bracelet Color">{{watchInfo.bracelet_color_name}}</td>
        <td data-label="Clasp Material">{{watchInfo.clasp_material_name}}</td>
        <td data-label="Clasp">{{watchInfo.clasp_name}}</td>
        <td data-label="Bezel Material">{{watchInfo.bezel_material_name}}</td>
        <td data-label="Thickness (mm)">{{watchInfo.thickness}}</td>
        <td data-label="Glass">{{watchInfo.glass_name}}</td>
        <td data-label="Water Resistance">{{watchInfo.water_resistance_name}}</td>
        <td data-label="Dial">{{watchInfo.dial_name}}</td>
        <td data-label="Dial Numerals">{{watchInfo.dial_numeral_name}}</td>
        <td data-label="Movement / Caliber">{{watchInfo.caliber}}</td>
        <td data-label="Base caliber">{{watchInfo.base_caliber}}</td>
        <td data-label="Power reserve (h)">{{watchInfo.power_reserve}}</td>
        <td data-label="Number of jewels">{{watchInfo.number_of_jewels}}</td>
        <td data-label="Frequency (A/h)">{{watchInfo.frequency}}</td>
        <td v-if="watchInfo.watchFunctions" data-label="Functions">{{watchInfo.watchFunctions}}</td>
        <td v-else data-label="Functions">No Functions</td>
        <td v-if="watchInfo.watchCharacteristics" data-label="Others">{{watchInfo.watchCharacteristics}}</td>
        <td v-else data-label="Others">No Others</td>
      </tr>
      </tbody>
    </table>
  </div>

</template>

<script>
    import {mapState, mapGetters, mapMutations, mapActions} from 'vuex'
    export default {
      name: "WatchDetails",
      computed: {
        ...mapGetters('authenticationServices', ['isAuthenticated']),
        ...mapGetters('watchServices', ['getWatchData', 'watchPictures']),
      },
      methods: {
        ...mapActions('watchServices', ['getWatchById', 'getWatchPictures', 'deleteWatchAction']),
        deleteWatch() {
          this.deleteWatchAction(this.$route.params.id);
        }
      },
      created() {
        if (!this.isAuthenticated) {
          this.$router.push('/login');
        }

        this.getWatchById(this.$route.params.id);
        this.getWatchPictures(this.$route.params.id)
      }
    }
</script>

<style scoped>
  table {
    table-layout: fixed;
    border: 1px solid #CCC;
    border-spacing: 0;
    border-collapse: collapse;
    margin: 0 2rem 0 2rem;
  }

  table td, table th {
    border: 1px solid #CCC;
    padding: 0.3rem 0.5rem;
  }

  table thead th {
    text-align: left;
    background: #CCC;
  }

  table tr:nth-child(odd) td {
    background: #F1F1F1;
  }

  .watch-functions {
    display: flex;
    flex-wrap: wrap;
    justify-content: flex-end;
    font-size: 3rem;
    margin: 1rem 3rem;

  }

  .watch-functions i {
    margin: 0 0.5rem;
    color: #060;
  }

  .title {
    text-align: center;

  }

  .title h2 {
    font-weight: bold;
    font-size: 4rem;
  }

  .title h2:after {
    display: block;
    content: '';
    border-bottom: 1px solid #CCC;
    width: 30rem;
    margin: 1rem auto;
  }


  /*picture*/
  .watch-container {
    max-width: 70%;
    margin: 0 auto;
  }

  .cards-layout.masonry {
    padding: 1em 0 0 0;
    column-count: 3;
    column-gap: 1em;
  }


  .cards-layout.masonry .card {
    display: inline-block;
    break-inside: avoid;
    margin-bottom: 1em;
  }

  .cards-layout.flex {
    display: flex;
    flex-wrap: wrap;
  }

  .cards-layout.flex .card {
    width: 29%;
    display: flex;
    align-items: stretch;
  }

  .card {
    padding: 0.4em;
    text-decoration: none;
    color: #333;
  }

  .card-inner {
    display: flex;
    flex-direction: column;
    position: relative;
    border: 0.1em solid #CCC;
    background: #FFF;
    box-shadow: 0 0 4px 1px rgba(0,0,0,0.1);
  }

  .card-inner, .card-inner:after {
    border-radius: 0.5em;
  }

  .card-inner:after {
    display: block;
    content: '';
    position: absolute;
    top: 0; left: 0; right: 0; bottom: 0;
    box-shadow: 0 0 5px 2px rgba(0,0,0,0.2);
    opacity: 0;
    transition: opacity 0.3s ease;
  }

  .card-media {
    min-height: 5em;
    background: #FEF;
  }

  .card-media img {
    display: block;
    width: 100%;
    height: auto;
  }


  .card-media a {
    position: relative;
    top: 0;
    left: 0;
    z-index: 1;
    padding: 1rem;
  }

  /*end picture*/

  @media screen and (max-width: 1919px){
    table thead {
      display: none;
    }

    table,
    table tbody,
    table tr, table td{
      display: block;
    }

    table tr {
      border: 2px solid black;
    }

    table tbody td:before {
      display: inline-block;
      width: 13rem;
      font-weight: bold;
      text-align: right;
      padding-right: 1rem;
      white-space: nowrap;
    }

    table tbody td:nth-child(1):before {
      content: attr(data-label);
    }

    table tbody td:nth-child(2):before {
      content: attr(data-label);
    }

    table tbody td:nth-child(3):before {
      content: attr(data-label);
    }

    table tbody td:nth-child(4):before {
      content: attr(data-label);
    }

    table tbody td:nth-child(5):before {
      content: attr(data-label);
    }

    table tbody td:nth-child(6):before {
      content: attr(data-label);
    }

    table tbody td:nth-child(7):before {
      content: attr(data-label);
    }

    table tbody td:nth-child(8):before {
      content: attr(data-label);
    }

    table tbody td:nth-child(9):before {
      content: attr(data-label);
    }

    table tbody td:nth-child(10):before {
      content: attr(data-label);
    }

    table tbody td:nth-child(11):before {
      content: attr(data-label);
    }

    table tbody td:nth-child(12):before {
      content: attr(data-label);
    }

    table tbody td:nth-child(13):before {
      content: attr(data-label);
    }

    table tbody td:nth-child(14):before {
      content: attr(data-label);
    }

    table tbody td:nth-child(15):before {
      content: attr(data-label);
    }

    table tbody td:nth-child(16):before {
      content: attr(data-label);
    }

    table tbody td:nth-child(17):before {
      content: attr(data-label);
    }

    table tbody td:nth-child(18):before {
      content: attr(data-label);
    }

    table tbody td:nth-child(19):before {
      content: attr(data-label);
    }

    table tbody td:nth-child(20):before {
      content: attr(data-label);
    }

    table tbody td:nth-child(21):before {
      content: attr(data-label);
    }

    table tbody td:nth-child(22):before {
      content: attr(data-label);
    }

    table tbody td:nth-child(23):before {
      content: attr(data-label);
    }

    table tbody td:nth-child(24):before {
      content: attr(data-label);
    }
  }
</style>
