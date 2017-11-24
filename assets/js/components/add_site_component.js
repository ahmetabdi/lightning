export default {
  // props: {
  //   initialRows: {
  //     required: true,
  //     type: Array
  //   }
  // },
  // data: function () {
  //   return {
  //     rows: this.initialRows
  //   }
  // },
  methods: {
    addRow: function () {
      this.rows.push({});
    },
    removeRow: function (index) {
      this.rows.splice(index, 1);
    }
  },
  template: "<button @click='submit'>Hello</button>"
}
