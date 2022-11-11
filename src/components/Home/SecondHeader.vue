<template>
  <div style="background-color: #17a2b8; margin-top: 20px" >
    <b-row align-v="center" class="text-center"> 
      <div class="hidden">
        <!-- <vs-button @click="activeSidebar = !activeSidebar" v-model="active" flat icon>
          <i class='bx bx-menu'></i> Catégorie
        </vs-button> -->
    <vs-sidebar
      absolute
      v-model="active"
      :open.sync="activeSidebar"
      >
      <template #logo>
        <!-- ...img logo -->
      </template>














<br>
<br>
<br>
<br>


  <b-row
     v-for="category in categoryListRow1"
     :key="category.id"
    style="margin-left: 10px"
  >
        <b-dropdown
  class="mb-1"
  size="sm"
  @click="categorySelect(category)"
  split
  id="dropdown-category"
  :text="category.name"
  variant="info"
  block
>

        <div v-for="subCategory in subCategoryList" :key="subCategory.id">
          <b-dropdown
            class="mx-2"
            v-if="category.id == subCategory.CategoryId"
            size="sm"
            id="dropdown-2"
            variant="transparent"
            dropright
            :text="subCategory.name"
          >
            <b-dropdown-item @click="subCategorySelect(subCategory)">
              <b-icon icon="cursor-fill" scale="0.5" />
              All {{ subCategory.name }}
            </b-dropdown-item>
            <div
              v-for="subSubCategory in subSubCategoryList"
              :key="subSubCategory.id"
            >
              <b-dropdown-item
                @click="subSubCategorySelect(subSubCategory)"
                style="margin-right: 20px"
                v-if="
                  subCategory.id == subSubCategory.SubCategoryId &&
                    subCategory.CategoryId == category.id
                "
                href="#"
              >
                <b-icon icon="cursor-fill" scale="0.5" />
                {{ subSubCategory.name }}
              </b-dropdown-item>
            </div>
          </b-dropdown>
        </div>
      </b-dropdown>
</b-row>

<b-row
v-for="category in categoryListRow2"
:key="category.id"
style="margin-left: 10px"
>
<b-dropdown
  class="mb-1"
  size="sm"
  @click="categorySelect(category)"
  split
  id="dropdown-category"
  :text="category.name"
  variant="info"
  block
>



  <div v-for="subCategory in subCategoryList" :key="subCategory.id">
    <b-dropdown
      v-if="category.id == subCategory.CategoryId"
      size="sm"
      id="dropdown-2"
      variant="transparent"
      dropright
      :text="subCategory.name"
    >
      <b-dropdown-item @click="subCategorySelect(subCategory)">
        <b-icon icon="cursor-fill" scale="0.5" />
        All {{ subCategory.name }}
      </b-dropdown-item>
      <div
        v-for="subSubCategory in subSubCategoryList"
        :key="subSubCategory.id"
      >
        <b-dropdown-item
          @click="subSubCategorySelect(subSubCategory)"
          style="margin-right: 20px"
          v-if="
            subCategory.id == subSubCategory.SubCategoryId &&
              subCategory.CategoryId == category.id
          "
          href="#"
        >
          <b-icon icon="cursor-fill" scale="0.5" />
          {{ subSubCategory.name }}
        </b-dropdown-item>
      </div>
    </b-dropdown>
  </div>
</b-dropdown>
</b-row>





      <template #footer>
        <vs-row justify="space-between">
          <vs-avatar>
            <img src="/avatars/avatar-5.png" alt="">
          </vs-avatar>

          <vs-avatar badge-color="danger" badge-position="top-right">
            <i class='bx bx-bell' ></i>

            <template #badge>
              28
            </template>
          </vs-avatar>
        </vs-row>
      </template>
    </vs-sidebar>
      </div>




























      <!-- <SideBar /> -->


    </b-row>
    <div style="display: flex; justify-content: center; align-items: center">
      <b-button
        class="ml-4"
        variant="transparent"
        @click="activeSidebar = !activeSidebar" v-model="active"
        
      >
        <b-icon variant="white" icon="chevron-double-down" /> Voir les catégories
      </b-button>
    </div>
  </div>
</template>

<script>
import SideBar from "../Common/sidbarMenu.vue";


export default {
  name: "SecondHeader",
  components: {SideBar},
  data() {
    return {
      categoryList: [],
      categoryeachRow: 6,
      categoryListRow1: [],
      categoryListRow2: [],
      subCategoryList: [],
      subSubCategoryList: [],
      active: 'home',
    activeSidebar: false
      
    };
  },
  computed: {},
  async mounted() {
    this.categoryList = await this.$store.dispatch("Category/getCategoryList");
    this.categoryListRow1 = this.categoryList.slice(0, this.categoryeachRow);
    this.categoryListRow2 = this.categoryList.slice(
      this.categoryeachRow,
      this.categoryList.length
    );
    this.subCategoryList = await this.$store.dispatch(
      "Category/getSubCategoryList"
    );
    this.subSubCategoryList = await this.$store.dispatch(
      "Category/getSubSubCategoryList"
    );

    this.$root.$on("bv::dropdown::show", bvEvent => {
      if (bvEvent.componentId === "dropdown-2") {
        this.isDropdown2Visible = true;
      }
    });
    this.$root.$on("bv::dropdown::hide", bvEvent => {
      if (bvEvent.componentId === "dropdown-2") {
        this.isDropdown2Visible = false;
      }
      if (this.isDropdown2Visible) {
        bvEvent.preventDefault();
      }
    });
  },
  methods: {
    categorySelect(category) {
      this.$router.push({ path: `/products/${category.name}` });
    },
    subCategorySelect(subCategory) {
      const category = this.categoryList.find(
        obj => obj.id == subCategory.CategoryId
      );
      this.$router.push({
        path: `/products/${category.name}/${subCategory.name}`
      });
    },
    subSubCategorySelect(subSubCategory) {
      const subCategory = this.subCategoryList.find(
        obj => obj.id == subSubCategory.SubCategoryId
      );
      const category = this.categoryList.find(
        obj => obj.id == subCategory.CategoryId
      );
      this.$router.push({
        path: `/products/${category.name}/${subCategory.name}/${subSubCategory.name}`
      });
    }
  }
};
</script>

<style lang="scss" scoped></style>
