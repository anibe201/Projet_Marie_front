<template>
  <div>
    <template>
      <div class="center">
        <vs-button @click="active=!active">
          Aller aux Catégories
        </vs-button>
        <vs-dialog scroll overflow-hidden not-close auto-width v-model="active">
          <template #header>
            <h4>
              Catégories d'oeuf
            </h4>
          </template>
          <div class="con-content">
            <div class="row">
              <div class="col-md-4 mt-2" v-for="category in categoryListRow1" :key="category.id">
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
              </div>
            </div>

            <div class="row">
              <div class="col-md-4 mt-2" v-for="category in categoryListRow2" :key="category.id">
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
              </div>
            </div>
          </div>
        </vs-dialog>
      </div>
    </template>
  </div>
</template>

<script>
import SideBar from "../Common/sidbarMenu.vue";


export default {
  name: "SecondHeader",
  components: {SideBar},
  data() {
    return {
      active: false,
      input1: '',
      input2: '',
      checkbox1: false,
      categoryList: [],
      categoryeachRow: 10,
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
