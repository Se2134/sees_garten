import { column, defineDb, defineTable } from 'astro:db';


const Plants = defineTable({
  columns: {
    idplants: column.number({primaryKey: true}),
    name: column.text({default: "/"}),
    lat_name: column.text({default: "/"}),
    type: column.text({default: "/"}),
    size: column.text({default: "/"}),
    picture: column.text({default: "/"}),
    propergation: column.text({default: "/"}),
    light: column.text({default: "/"}),
    water: column.text({default: "/"}),
    notes: column.text({default: "/"})
  }
})

const MyProjects = defineTable({
  columns: {
    idprojects: column.number({primaryKey: true}),
    name: column.text({default: "/"}),
    type: column.text({default: "/"}),
    container: column.number({references: () => Equipment.columns.idequipment, default: 1}),
    plants: column.number({references: () => Plants.columns.idplants, default: 1}),
    animals: column.number({references: () => Animals.columns.idanimals, default: 1}),
    notes: column.text({default: "/"})
  }
})

const Animals = defineTable({
  columns: {
    idanimals: column.number({primaryKey: true}),
    name: column.text({default: "/"}),
    lat_name: column.text({default: "/"}),
    size: column.text({default: "/"}),
    food: column.text({default: "/"}),
    reproduction: column.text({default: "/"}),
    type: column.text({default: "/"}),
    notes: column.text({default: "/"})
  }
})

const Equipment = defineTable({
  columns: {
    idequipment: column.number({primaryKey: true}),
    name: column.text({default: "/"}),
    price: column.text({default: "/"}),
    link: column.text({default: "/"}),
    type: column.text({default: "/"}),
    notes: column.text({default: "/"})
  }
})


// https://astro.build/db/config
export default defineDb({
  tables: { Plants, Animals, Equipment, MyProjects },
});
